.class final Lu/aly/cg;
.super Lu/aly/dy;
.source "UMEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dy",
        "<",
        "Lu/aly/cf;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 710
    invoke-direct {p0}, Lu/aly/dy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 710
    invoke-direct {p0}, Lu/aly/cg;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/dq;Lu/aly/cw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 710
    check-cast p2, Lu/aly/cf;

    .line 1828
    invoke-virtual {p2}, Lu/aly/cf;->f()V

    .line 1830
    invoke-static {}, Lu/aly/cf;->g()Lu/aly/du;

    invoke-virtual {p1}, Lu/aly/dq;->a()V

    .line 1831
    iget-object v0, p2, Lu/aly/cf;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1832
    invoke-static {}, Lu/aly/cf;->h()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1833
    iget-object v0, p2, Lu/aly/cf;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Ljava/lang/String;)V

    .line 1836
    :cond_0
    iget-object v0, p2, Lu/aly/cf;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1837
    invoke-static {}, Lu/aly/cf;->i()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1838
    iget-object v0, p2, Lu/aly/cf;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Ljava/lang/String;)V

    .line 1841
    :cond_1
    iget-object v0, p2, Lu/aly/cf;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1842
    invoke-static {}, Lu/aly/cf;->j()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1843
    iget-object v0, p2, Lu/aly/cf;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Ljava/lang/String;)V

    .line 1846
    :cond_2
    invoke-static {}, Lu/aly/cf;->k()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1847
    iget v0, p2, Lu/aly/cf;->d:I

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(I)V

    .line 1849
    invoke-static {}, Lu/aly/cf;->l()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1850
    iget v0, p2, Lu/aly/cf;->e:I

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(I)V

    .line 1852
    invoke-static {}, Lu/aly/cf;->m()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1853
    iget v0, p2, Lu/aly/cf;->f:I

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(I)V

    .line 1855
    iget-object v0, p2, Lu/aly/cf;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    .line 1856
    invoke-static {}, Lu/aly/cf;->n()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1857
    iget-object v0, p2, Lu/aly/cf;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Ljava/nio/ByteBuffer;)V

    .line 1860
    :cond_3
    iget-object v0, p2, Lu/aly/cf;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1861
    invoke-static {}, Lu/aly/cf;->o()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1862
    iget-object v0, p2, Lu/aly/cf;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Ljava/lang/String;)V

    .line 1865
    :cond_4
    iget-object v0, p2, Lu/aly/cf;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1866
    invoke-static {}, Lu/aly/cf;->p()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1867
    iget-object v0, p2, Lu/aly/cf;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Ljava/lang/String;)V

    .line 1870
    :cond_5
    invoke-virtual {p2}, Lu/aly/cf;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1871
    invoke-static {}, Lu/aly/cf;->q()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1872
    iget v0, p2, Lu/aly/cf;->j:I

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(I)V

    .line 1875
    :cond_6
    invoke-virtual {p1}, Lu/aly/dq;->c()V

    .line 1876
    invoke-virtual {p1}, Lu/aly/dq;->b()V

    .line 710
    return-void
.end method

.method public final synthetic b(Lu/aly/dq;Lu/aly/cw;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/16 v2, 0xb

    .line 710
    check-cast p2, Lu/aly/cf;

    .line 2715
    invoke-virtual {p1}, Lu/aly/dq;->d()Lu/aly/du;

    .line 2717
    :goto_0
    invoke-virtual {p1}, Lu/aly/dq;->f()Lu/aly/dn;

    move-result-object v0

    .line 2718
    iget-byte v1, v0, Lu/aly/dn;->b:B

    if-eqz v1, :cond_a

    .line 2721
    iget-short v1, v0, Lu/aly/dn;->c:S

    packed-switch v1, :pswitch_data_0

    .line 2803
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2723
    :pswitch_0
    iget-byte v1, v0, Lu/aly/dn;->b:B

    if-ne v1, v2, :cond_0

    .line 2724
    invoke-virtual {p1}, Lu/aly/dq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/cf;->a:Ljava/lang/String;

    goto :goto_0

    .line 2727
    :cond_0
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2731
    :pswitch_1
    iget-byte v1, v0, Lu/aly/dn;->b:B

    if-ne v1, v2, :cond_1

    .line 2732
    invoke-virtual {p1}, Lu/aly/dq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/cf;->b:Ljava/lang/String;

    goto :goto_0

    .line 2735
    :cond_1
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2739
    :pswitch_2
    iget-byte v1, v0, Lu/aly/dn;->b:B

    if-ne v1, v2, :cond_2

    .line 2740
    invoke-virtual {p1}, Lu/aly/dq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/cf;->c:Ljava/lang/String;

    goto :goto_0

    .line 2743
    :cond_2
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2747
    :pswitch_3
    iget-byte v1, v0, Lu/aly/dn;->b:B

    if-ne v1, v3, :cond_3

    .line 2748
    invoke-virtual {p1}, Lu/aly/dq;->m()I

    move-result v0

    iput v0, p2, Lu/aly/cf;->d:I

    .line 2749
    invoke-virtual {p2}, Lu/aly/cf;->a()V

    goto :goto_0

    .line 2751
    :cond_3
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2755
    :pswitch_4
    iget-byte v1, v0, Lu/aly/dn;->b:B

    if-ne v1, v3, :cond_4

    .line 2756
    invoke-virtual {p1}, Lu/aly/dq;->m()I

    move-result v0

    iput v0, p2, Lu/aly/cf;->e:I

    .line 2757
    invoke-virtual {p2}, Lu/aly/cf;->b()V

    goto :goto_0

    .line 2759
    :cond_4
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2763
    :pswitch_5
    iget-byte v1, v0, Lu/aly/dn;->b:B

    if-ne v1, v3, :cond_5

    .line 2764
    invoke-virtual {p1}, Lu/aly/dq;->m()I

    move-result v0

    iput v0, p2, Lu/aly/cf;->f:I

    .line 2765
    invoke-virtual {p2}, Lu/aly/cf;->c()V

    goto :goto_0

    .line 2767
    :cond_5
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto/16 :goto_0

    .line 2771
    :pswitch_6
    iget-byte v1, v0, Lu/aly/dn;->b:B

    if-ne v1, v2, :cond_6

    .line 2772
    invoke-virtual {p1}, Lu/aly/dq;->q()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lu/aly/cf;->g:Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    .line 2775
    :cond_6
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto/16 :goto_0

    .line 2779
    :pswitch_7
    iget-byte v1, v0, Lu/aly/dn;->b:B

    if-ne v1, v2, :cond_7

    .line 2780
    invoke-virtual {p1}, Lu/aly/dq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/cf;->h:Ljava/lang/String;

    goto/16 :goto_0

    .line 2783
    :cond_7
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto/16 :goto_0

    .line 2787
    :pswitch_8
    iget-byte v1, v0, Lu/aly/dn;->b:B

    if-ne v1, v2, :cond_8

    .line 2788
    invoke-virtual {p1}, Lu/aly/dq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/cf;->i:Ljava/lang/String;

    goto/16 :goto_0

    .line 2791
    :cond_8
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto/16 :goto_0

    .line 2795
    :pswitch_9
    iget-byte v1, v0, Lu/aly/dn;->b:B

    if-ne v1, v3, :cond_9

    .line 2796
    invoke-virtual {p1}, Lu/aly/dq;->m()I

    move-result v0

    iput v0, p2, Lu/aly/cf;->j:I

    .line 2797
    invoke-virtual {p2}, Lu/aly/cf;->e()V

    goto/16 :goto_0

    .line 2799
    :cond_9
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto/16 :goto_0

    .line 2807
    :cond_a
    invoke-virtual {p1}, Lu/aly/dq;->e()V

    .line 4377
    iget-byte v0, p2, Lu/aly/cf;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/cu;->a(BI)Z

    move-result v0

    .line 2811
    if-nez v0, :cond_b

    .line 2812
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'serial_num\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2813
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4403
    :cond_b
    iget-byte v0, p2, Lu/aly/cf;->k:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/cu;->a(BI)Z

    move-result v0

    .line 2815
    if-nez v0, :cond_c

    .line 2816
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'ts_secs\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2817
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4429
    :cond_c
    iget-byte v0, p2, Lu/aly/cf;->k:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/cu;->a(BI)Z

    move-result v0

    .line 2819
    if-nez v0, :cond_d

    .line 2820
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'length\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2821
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2823
    :cond_d
    invoke-virtual {p2}, Lu/aly/cf;->f()V

    .line 710
    return-void

    .line 2721
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
