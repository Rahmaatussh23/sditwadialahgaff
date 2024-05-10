impublic class GajiKaryawan {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Masukkan Golongan Karyawan (A/B/C): ");
        String golongan = input.nextLine().toUpperCase();
        System.out.print("Masukkan Jam Lembur: ");
        int jamLembur = input.nextInt();

        int gajiPokok;
        switch (golongan) {
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
                System.out.println("Golongan Karyawan tidak valid!");
                return;
        }

        double gajiLembur = hitungGajiLembur(gajiPokok, jamLembur);
        double totalPenghasilan = gajiPokok + gajiLembur;

        System.out.printf("Jumlah penghasilan: Rp%.2f\n", totalPenghasilan);
    }

    static double hitungGajiLembur(int gajiPokok, int jamLembur) {
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