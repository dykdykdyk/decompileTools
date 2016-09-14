.class public Lu/aly/cf;
.super Ljava/lang/Object;
.source "UMEnvelope.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/cw",
        "<",
        "Lu/aly/cf;",
        "Lu/aly/ck;",
        ">;"
    }
.end annotation


# static fields
.field public static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/ck;",
            "Lu/aly/de;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Lu/aly/du;

.field private static final n:Lu/aly/dn;

.field private static final o:Lu/aly/dn;

.field private static final p:Lu/aly/dn;

.field private static final q:Lu/aly/dn;

.field private static final r:Lu/aly/dn;

.field private static final s:Lu/aly/dn;

.field private static final t:Lu/aly/dn;

.field private static final u:Lu/aly/dn;

.field private static final v:Lu/aly/dn;

.field private static final w:Lu/aly/dn;

.field private static final x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lu/aly/dw;",
            ">;",
            "Lu/aly/dx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/nio/ByteBuffer;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I

.field k:B

.field private y:[Lu/aly/ck;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/16 v5, 0xb

    .line 26
    new-instance v0, Lu/aly/du;

    const-string v1, "UMEnvelope"

    invoke-direct {v0, v1}, Lu/aly/du;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/cf;->m:Lu/aly/du;

    .line 29
    new-instance v0, Lu/aly/dn;

    const-string v1, "version"

    invoke-direct {v0, v1, v5, v6}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cf;->n:Lu/aly/dn;

    .line 31
    new-instance v0, Lu/aly/dn;

    const-string v1, "address"

    invoke-direct {v0, v1, v5, v8}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cf;->o:Lu/aly/dn;

    .line 33
    new-instance v0, Lu/aly/dn;

    const-string v1, "signature"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cf;->p:Lu/aly/dn;

    .line 35
    new-instance v0, Lu/aly/dn;

    const-string v1, "serial_num"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cf;->q:Lu/aly/dn;

    .line 37
    new-instance v0, Lu/aly/dn;

    const-string v1, "ts_secs"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cf;->r:Lu/aly/dn;

    .line 39
    new-instance v0, Lu/aly/dn;

    const-string v1, "length"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cf;->s:Lu/aly/dn;

    .line 41
    new-instance v0, Lu/aly/dn;

    const-string v1, "entity"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v5, v2}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cf;->t:Lu/aly/dn;

    .line 43
    new-instance v0, Lu/aly/dn;

    const-string v1, "guid"

    invoke-direct {v0, v1, v5, v7}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cf;->u:Lu/aly/dn;

    .line 45
    new-instance v0, Lu/aly/dn;

    const-string v1, "checksum"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v5, v2}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cf;->v:Lu/aly/dn;

    .line 47
    new-instance v0, Lu/aly/dn;

    const-string v1, "codex"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v7, v2}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/cf;->w:Lu/aly/dn;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    sput-object v0, Lu/aly/cf;->x:Ljava/util/Map;

    const-class v1, Lu/aly/dy;

    new-instance v2, Lu/aly/ch;

    invoke-direct {v2, v3}, Lu/aly/ch;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lu/aly/cf;->x:Ljava/util/Map;

    const-class v1, Lu/aly/dz;

    new-instance v2, Lu/aly/cj;

    invoke-direct {v2, v3}, Lu/aly/cj;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/ck;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 164
    sget-object v1, Lu/aly/ck;->a:Lu/aly/ck;

    new-instance v2, Lu/aly/de;

    const-string v3, "version"

    new-instance v4, Lu/aly/df;

    invoke-direct {v4, v5}, Lu/aly/df;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/de;-><init>(Ljava/lang/String;BLu/aly/df;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v1, Lu/aly/ck;->b:Lu/aly/ck;

    new-instance v2, Lu/aly/de;

    const-string v3, "address"

    new-instance v4, Lu/aly/df;

    invoke-direct {v4, v5}, Lu/aly/df;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/de;-><init>(Ljava/lang/String;BLu/aly/df;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v1, Lu/aly/ck;->c:Lu/aly/ck;

    new-instance v2, Lu/aly/de;

    const-string v3, "signature"

    new-instance v4, Lu/aly/df;

    invoke-direct {v4, v5}, Lu/aly/df;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/de;-><init>(Ljava/lang/String;BLu/aly/df;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v1, Lu/aly/ck;->d:Lu/aly/ck;

    new-instance v2, Lu/aly/de;

    const-string v3, "serial_num"

    new-instance v4, Lu/aly/df;

    invoke-direct {v4, v7}, Lu/aly/df;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/de;-><init>(Ljava/lang/String;BLu/aly/df;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v1, Lu/aly/ck;->e:Lu/aly/ck;

    new-instance v2, Lu/aly/de;

    const-string v3, "ts_secs"

    new-instance v4, Lu/aly/df;

    invoke-direct {v4, v7}, Lu/aly/df;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/de;-><init>(Ljava/lang/String;BLu/aly/df;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v1, Lu/aly/ck;->f:Lu/aly/ck;

    new-instance v2, Lu/aly/de;

    const-string v3, "length"

    new-instance v4, Lu/aly/df;

    invoke-direct {v4, v7}, Lu/aly/df;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/de;-><init>(Ljava/lang/String;BLu/aly/df;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v1, Lu/aly/ck;->g:Lu/aly/ck;

    new-instance v2, Lu/aly/de;

    const-string v3, "entity"

    new-instance v4, Lu/aly/df;

    invoke-direct {v4, v5, v6}, Lu/aly/df;-><init>(BZ)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/de;-><init>(Ljava/lang/String;BLu/aly/df;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v1, Lu/aly/ck;->h:Lu/aly/ck;

    new-instance v2, Lu/aly/de;

    const-string v3, "guid"

    new-instance v4, Lu/aly/df;

    invoke-direct {v4, v5}, Lu/aly/df;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/de;-><init>(Ljava/lang/String;BLu/aly/df;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v1, Lu/aly/ck;->i:Lu/aly/ck;

    new-instance v2, Lu/aly/de;

    const-string v3, "checksum"

    new-instance v4, Lu/aly/df;

    invoke-direct {v4, v5}, Lu/aly/df;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/de;-><init>(Ljava/lang/String;BLu/aly/df;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v1, Lu/aly/ck;->j:Lu/aly/ck;

    new-instance v2, Lu/aly/de;

    const-string v3, "codex"

    new-instance v4, Lu/aly/df;

    invoke-direct {v4, v7}, Lu/aly/df;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/de;-><init>(Ljava/lang/String;BLu/aly/df;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/cf;->l:Ljava/util/Map;

    .line 202
    const-class v0, Lu/aly/cf;

    sget-object v1, Lu/aly/cf;->l:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/de;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 203
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-byte v2, p0, Lu/aly/cf;->k:B

    .line 158
    const/4 v0, 0x1

    new-array v0, v0, [Lu/aly/ck;

    sget-object v1, Lu/aly/ck;->j:Lu/aly/ck;

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/cf;->y:[Lu/aly/ck;

    .line 206
    return-void
.end method

.method static synthetic g()Lu/aly/du;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/cf;->m:Lu/aly/du;

    return-object v0
.end method

.method static synthetic h()Lu/aly/dn;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/cf;->n:Lu/aly/dn;

    return-object v0
.end method

.method static synthetic i()Lu/aly/dn;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/cf;->o:Lu/aly/dn;

    return-object v0
.end method

.method static synthetic j()Lu/aly/dn;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/cf;->p:Lu/aly/dn;

    return-object v0
.end method

.method static synthetic k()Lu/aly/dn;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/cf;->q:Lu/aly/dn;

    return-object v0
.end method

.method static synthetic l()Lu/aly/dn;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/cf;->r:Lu/aly/dn;

    return-object v0
.end method

.method static synthetic m()Lu/aly/dn;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/cf;->s:Lu/aly/dn;

    return-object v0
.end method

.method static synthetic n()Lu/aly/dn;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/cf;->t:Lu/aly/dn;

    return-object v0
.end method

.method static synthetic o()Lu/aly/dn;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/cf;->u:Lu/aly/dn;

    return-object v0
.end method

.method static synthetic p()Lu/aly/dn;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/cf;->v:Lu/aly/dn;

    return-object v0
.end method

.method static synthetic q()Lu/aly/dn;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/cf;->w:Lu/aly/dn;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 381
    iget-byte v0, p0, Lu/aly/cf;->k:B

    .line 1137
    or-int/lit8 v0, v0, 0x1

    .line 1128
    int-to-byte v0, v0

    .line 381
    iput-byte v0, p0, Lu/aly/cf;->k:B

    .line 382
    return-void
.end method

.method public final a(Lu/aly/dq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 558
    sget-object v0, Lu/aly/cf;->x:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dq;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dx;

    invoke-interface {v0}, Lu/aly/dx;->a()Lu/aly/dw;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dw;->b(Lu/aly/dq;Lu/aly/cw;)V

    .line 559
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 407
    iget-byte v0, p0, Lu/aly/cf;->k:B

    .line 2137
    or-int/lit8 v0, v0, 0x2

    .line 2128
    int-to-byte v0, v0

    .line 407
    iput-byte v0, p0, Lu/aly/cf;->k:B

    .line 408
    return-void
.end method

.method public final b(Lu/aly/dq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 562
    sget-object v0, Lu/aly/cf;->x:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dq;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dx;

    invoke-interface {v0}, Lu/aly/dx;->a()Lu/aly/dw;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dw;->a(Lu/aly/dq;Lu/aly/cw;)V

    .line 563
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 433
    iget-byte v0, p0, Lu/aly/cf;->k:B

    .line 3137
    or-int/lit8 v0, v0, 0x4

    .line 3128
    int-to-byte v0, v0

    .line 433
    iput-byte v0, p0, Lu/aly/cf;->k:B

    .line 434
    return-void
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 546
    iget-byte v0, p0, Lu/aly/cf;->k:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lu/aly/cu;->a(BI)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 550
    iget-byte v0, p0, Lu/aly/cf;->k:B

    .line 4137
    or-int/lit8 v0, v0, 0x8

    .line 4128
    int-to-byte v0, v0

    .line 550
    iput-byte v0, p0, Lu/aly/cf;->k:B

    .line 551
    return-void
.end method

.method public final f()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 650
    iget-object v0, p0, Lu/aly/cf;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 651
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'version\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0}, Lu/aly/cf;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_0
    iget-object v0, p0, Lu/aly/cf;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 655
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'address\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p0}, Lu/aly/cf;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :cond_1
    iget-object v0, p0, Lu/aly/cf;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 659
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'signature\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p0}, Lu/aly/cf;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_2
    iget-object v0, p0, Lu/aly/cf;->g:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_3

    .line 669
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'entity\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p0}, Lu/aly/cf;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    :cond_3
    iget-object v0, p0, Lu/aly/cf;->h:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 673
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'guid\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0}, Lu/aly/cf;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_4
    iget-object v0, p0, Lu/aly/cf;->i:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 677
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'checksum\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p0}, Lu/aly/cf;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UMEnvelope("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 570
    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    iget-object v1, p0, Lu/aly/cf;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 572
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const-string v1, "address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    iget-object v1, p0, Lu/aly/cf;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 581
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const-string v1, "signature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget-object v1, p0, Lu/aly/cf;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 590
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    :goto_2
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    const-string v1, "serial_num:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    iget v1, p0, Lu/aly/cf;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 601
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    const-string v1, "ts_secs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    iget v1, p0, Lu/aly/cf;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 606
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    const-string v1, "length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    iget v1, p0, Lu/aly/cf;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 611
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    const-string v1, "entity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    iget-object v1, p0, Lu/aly/cf;->g:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_4

    .line 614
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    :goto_3
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    const-string v1, "guid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    iget-object v1, p0, Lu/aly/cf;->h:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 623
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :goto_4
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    const-string v1, "checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    iget-object v1, p0, Lu/aly/cf;->i:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 632
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    :goto_5
    invoke-virtual {p0}, Lu/aly/cf;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    const-string v1, "codex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    iget v1, p0, Lu/aly/cf;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 644
    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 574
    :cond_1
    iget-object v1, p0, Lu/aly/cf;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 583
    :cond_2
    iget-object v1, p0, Lu/aly/cf;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 592
    :cond_3
    iget-object v1, p0, Lu/aly/cf;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 616
    :cond_4
    iget-object v1, p0, Lu/aly/cf;->g:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lu/aly/cx;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    goto :goto_3

    .line 625
    :cond_5
    iget-object v1, p0, Lu/aly/cf;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 634
    :cond_6
    iget-object v1, p0, Lu/aly/cf;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method
