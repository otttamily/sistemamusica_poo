package br.edu.univille.poo.sistemamusica;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@Entity
public class Pesquisa {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long Id;
    public String palavraChave;
    public String resultados;
    @OneToMany
    private List<Usuario> paraVariasPesquisas;
    @OneToOne
    private Pesquisa exibeUmaMusica;
}
