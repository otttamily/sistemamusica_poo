package br.edu.univille.poo.sistemamusica;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@Entity
public class Playlist {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long Id;
    public String musica;
    public String capaAlbum;
    public String nomes;
    @OneToMany
    public List<Musica> exibeVariasPlaylist;

}
