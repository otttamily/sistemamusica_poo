package br.edu.univille.poo.sistemamusica;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Entity
public class Compartilhamento {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long Id;
    public String tipos;
    public String conteudos;

    @ManyToOne
    private Usuario compartilhadoPor;
    @ManyToOne
    private Usuario recebidoPor;
    @ManyToOne
    private Playlist paraUmUsuario;
    @OneToOne
    private Musica paraUsuario;

}
