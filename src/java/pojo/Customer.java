package pojo;

public class Customer {
    private String id;
    private String nama_pet;
    private String jenis;
    private String ras;
    private String pemilik;
    private String telepon;

    public Customer() {
    }

    public Customer(String id, String nama_pet, String jenis, String ras, String pemilik, String telepon) {
        this.id = id;
        this.nama_pet = nama_pet;
        this.jenis = jenis;
        this.ras = ras;
        this.pemilik= pemilik;
        this.telepon = telepon;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNama() {
        return nama_pet;
    }

    public void setNama(String nama_pet) {
        this.nama_pet = nama_pet;
    }

    public String getJenis() {
        return jenis;
    }

    public void setJenis(String jenis) {
        this.jenis = jenis;
    }

    public String getRas() {
        return ras;
    }

    public void setRas(String ras) {
        this.ras = ras;
    }

    public String getPemilik() {
        return pemilik;
    }

    public void setPemilik(String pemilik) {
        this.pemilik = pemilik;
    }

    public String getTelepon() {
        return telepon;
    }

    public void setTelepon(String telepon) {
        this.telepon = telepon;
    }

   
    
}

