package br.edu.univille.poo.sistemamusica;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@Entity
public class Usuario {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long Id;
    private String nome;
    private String idioma;
    @OneToOne
    private Perfil perfil;
    @OneToMany
    public List<Playlist> playlists;
    @OneToOne
    public Musica podeEscutarUma;

}
