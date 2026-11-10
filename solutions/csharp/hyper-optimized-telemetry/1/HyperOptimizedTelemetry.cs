using System;

public static class TelemetryBuffer
{
    public static byte[] ToBuffer(long reading)
    {
        byte prefixByte = reading switch 
        {
                (>= long  .MinValue) and (<  int   .MinValue) => 256 - 8,
                (>= int   .MinValue) and (<  short .MinValue) => 256 - 4,
                (>= short .MinValue) and (<  0              ) => 256 - 2,
                (>= 0              ) and (<= ushort.MaxValue) =>       2,
                (>  ushort.MaxValue) and (<= int   .MaxValue) => 256 - 4,
                (>  int   .MaxValue) and (<= uint  .MaxValue) =>       4,
                (>  uint  .MaxValue) and (<= long  .MaxValue) => 256 - 8,
        };

        var output = new byte[9];
        
        output[0] = prefixByte;
        BitConverter.GetBytes(reading).CopyTo(output, 1);

        int prefix = ConvertPrefix(prefixByte);
        if(prefix < 0)
        {
            Array.Fill<byte>(output, 0x0, 1 - prefix, 8 + prefix);
        }
        
        return output;
    }

    public static long FromBuffer(byte[] buffer)
    {
        int prefix = ConvertPrefix(buffer[0]);

        return prefix switch {
            -8 => BitConverter.ToInt64(buffer, 1),
            -4 => BitConverter.ToInt32(buffer, 1),
            -2 => BitConverter.ToInt16(buffer, 1),
             2 => BitConverter.ToUInt16(buffer, 1),
             4 => BitConverter.ToUInt32(buffer, 1),
             _ => 0,
        };
    }

    private static int ConvertPrefix(byte prefixByte)
    {
        if(prefixByte > 127)
        {
            return prefixByte - 256;
        }
        return prefixByte;
    }
}
