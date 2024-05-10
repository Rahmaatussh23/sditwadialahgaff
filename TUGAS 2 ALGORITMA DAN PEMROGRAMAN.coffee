namespace GajiKaryawan
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Masukkan Golongan Karyawan (A/B/C): ");
            string golongan = Console.ReadLine().ToUpper();
            Console.Write("Masukkan Jam Lembur: ");
            int jamLembur = int.Parse(Console.ReadLine());

            int gajiPokok;
            switch (golongan)
            {
                case "A":
                    gajiPokok = 5000000;
                    break;
                case "B":
                    gajiPokok = 6500000;
                    break;
                case "C":
                    gajiPokok = 9500000;
                    break;
                default:
                    Console.WriteLine("Golongan Karyawan tidak valid!");
                    return;
            }

            double gajiLembur = HitungGajiLembur(gajiPokok, jamLembur);
            double totalPenghasilan = gajiPokok + gajiLembur;

            Console.WriteLine($"Jumlah penghasilan: Rp{totalPenghasilan}");
        }

        static double HitungGajiLembur(int gajiPokok, int jamLembur)
        {
            double persentaseLembur;
            if (jamLembur == 1)
                persentaseLembur = 0.3;
            else if (jamLembur == 2)
                persentaseLembur = 0.32;
            else if (jamLembur == 3)
                persentaseLembur = 0.34;
            else if (jamLembur == 4)
                persentaseLembur = 0.36;
            else
                persentaseLembur = 0.38;

            return gajiPokok * persentaseLembur;
        }
    }
}