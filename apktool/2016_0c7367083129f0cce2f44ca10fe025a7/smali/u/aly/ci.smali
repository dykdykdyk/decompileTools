.class final Lu/aly/ci;
.super Lu/aly/dz;
.source "UMEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dz",
        "<",
        "Lu/aly/cf;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 887
    invoke-direct {p0}, Lu/aly/dz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 887
    invoke-direct {p0}, Lu/aly/ci;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/dq;Lu/aly/cw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 887
    check-cast p2, Lu/aly/cf;

    .line 1892
    check-cast p1, Lu/aly/dv;

    .line 1893
    iget-object v0, p2, Lu/aly/cf;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dv;->a(Ljava/lang/String;)V

    .line 1894
    iget-object v0, p2, Lu/aly/cf;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dv;->a(Ljava/lang/String;)V

    .line 1895
    iget-object v0, p2, Lu/aly/cf;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dv;->a(Ljava/lang/String;)V

    .line 1896
    iget v0, p2, Lu/aly/cf;->d:I

    invoke-virtual {p1, v0}, Lu/aly/dv;->a(I)V

    .line 1897
    iget v0, p2, Lu/aly/cf;->e:I

    invoke-virtual {p1, v0}, Lu/aly/dv;->a(I)V

    .line 1898
    iget v0, p2, Lu/aly/cf;->f:I

    invoke-virtual {p1, v0}, Lu/aly/dv;->a(I)V

    .line 1899
    iget-object v0, p2, Lu/aly/cf;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lu/aly/dv;->a(Ljava/nio/ByteBuffer;)V

    .line 1900
    iget-object v0, p2, Lu/aly/cf;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dv;->a(Ljava/lang/String;)V

    .line 1901
    iget-object v0, p2, Lu/aly/cf;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dv;->a(Ljava/lang/String;)V

    .line 1902
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1903
    invoke-virtual {p2}, Lu/aly/cf;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1904
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1906
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lu/aly/dv;->a(Ljava/util/BitSet;I)V

    .line 1907
    invoke-virtual {p2}, Lu/aly/cf;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1908
    iget v0, p2, Lu/aly/cf;->j:I

    invoke-virtual {p1, v0}, Lu/aly/dv;->a(I)V

    .line 887
    :cond_1
    return-void
.end method

.method public final synthetic b(Lu/aly/dq;Lu/aly/cw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 887
    check-cast p2, Lu/aly/cf;

    .line 1915
    check-cast p1, Lu/aly/dv;

    .line 1916
    invoke-virtual {p1}, Lu/aly/dv;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/cf;->a:Ljava/lang/String;

    .line 1918
    invoke-virtual {p1}, Lu/aly/dv;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/cf;->b:Ljava/lang/String;

    .line 1920
    invoke-virtual {p1}, Lu/aly/dv;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/cf;->c:Ljava/lang/String;

    .line 1922
    invoke-virtual {p1}, Lu/aly/dv;->m()I

    move-result v0

    iput v0, p2, Lu/aly/cf;->d:I

    .line 1923
    invoke-virtual {p2}, Lu/aly/cf;->a()V

    .line 1924
    invoke-virtual {p1}, Lu/aly/dv;->m()I

    move-result v0

    iput v0, p2, Lu/aly/cf;->e:I

    .line 1925
    invoke-virtual {p2}, Lu/aly/cf;->b()V

    .line 1926
    invoke-virtual {p1}, Lu/aly/dv;->m()I

    move-result v0

    iput v0, p2, Lu/aly/cf;->f:I

    .line 1927
    invoke-virtual {p2}, Lu/aly/cf;->c()V

    .line 1928
    invoke-virtual {p1}, Lu/aly/dv;->q()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lu/aly/cf;->g:Ljava/nio/ByteBuffer;

    .line 1930
    invoke-virtual {p1}, Lu/aly/dv;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/cf;->h:Ljava/lang/String;

    .line 1932
    invoke-virtual {p1}, Lu/aly/dv;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/cf;->i:Ljava/lang/String;

    .line 1934
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lu/aly/dv;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 1935
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1936
    invoke-virtual {p1}, Lu/aly/dv;->m()I

    move-result v0

    iput v0, p2, Lu/aly/cf;->j:I

    .line 1937
    invoke-virtual {p2}, Lu/aly/cf;->e()V

    .line 887
    :cond_0
    return-void
.end method
