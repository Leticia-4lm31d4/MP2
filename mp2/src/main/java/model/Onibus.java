package model;

public class Onibus {

    private String placa;
    private int codigo_linha;
    private String nome_linha;

    public int getCodigoLinha(){
        return this.codigo_linha;
    }

    public String getNomeLinha(){
        return this.nome_linha;
    }

    public String getPlaca(){
        return this.placa;
    }

    public void setCodigoLinha(int codigo_linha) {
        this.codigo_linha = codigo_linha;
    }

    public void setNomeLinha(int nome_linha) {
        this.codigo_linha = nome_linha;
    }

    public void setPlaca(int placa) {
        this.codigo_linha = placa;
    }
}