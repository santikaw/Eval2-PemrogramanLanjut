package pojo;

public class Layanan {
    private String id;
    private String nama;
    private String harga;

    public Layanan() {
    }

    public Layanan(String id, String nama, String harga) {
        this.id = id;
        this.nama = nama;
        this.harga = harga;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return nama;
    }

    public void setName(String nama) {
        this.nama = nama;
    }   
    
    public String getHarga() {
        return harga;
    }

    public void setHarga(String harga) {
        this.harga = harga;
    } 
    
}

