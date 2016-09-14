.class public Lu/aly/at;
.super Ljava/lang/Object;
.source "IdJournal.java"

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
        "Lu/aly/at;",
        "Lu/aly/ay;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/ay;",
            "Lu/aly/de;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lu/aly/du;

.field private static final h:Lu/aly/dn;

.field private static final i:Lu/aly/dn;

.field private static final j:Lu/aly/dn;

.field private static final k:Lu/aly/dn;

.field private static final l:Ljava/util/Map;
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

.field public d:J

.field e:B

.field private m:[Lu/aly/ay;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/16 v5, 0xb

    .line 25
    new-instance v0, Lu/aly/du;

    const-string v1, "IdJournal"

    invoke-direct {v0, v1}, Lu/aly/du;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/at;->g:Lu/aly/du;

    .line 28
    new-instance v0, Lu/aly/dn;

    const-string v1, "domain"

    invoke-direct {v0, v1, v5, v6}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/at;->h:Lu/aly/dn;

    .line 30
    new-instance v0, Lu/aly/dn;

    const-string v1, "old_id"

    invoke-direct {v0, v1, v5, v7}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/at;->i:Lu/aly/dn;

    .line 32
    new-instance v0, Lu/aly/dn;

    const-string v1, "new_id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/at;->j:Lu/aly/dn;

    .line 34
    new-instance v0, Lu/aly/dn;

    const-string v1, "ts"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v8, v2}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/at;->k:Lu/aly/dn;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    sput-object v0, Lu/aly/at;->l:Ljava/util/Map;

    const-class v1, Lu/aly/dy;

    new-instance v2, Lu/aly/av;

    invoke-direct {v2, v3}, Lu/aly/av;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lu/aly/at;->l:Ljava/util/Map;

    const-class v1, Lu/aly/dz;

    new-instance v2, Lu/aly/ax;

    invoke-direct {v2, v3}, Lu/aly/ax;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/ay;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 128
    sget-object v1, Lu/aly/ay;->a:Lu/aly/ay;

    new-instance v2, Lu/aly/de;

    const-string v3, "domain"

    new-instance v4, Lu/aly/df;

    invoke-direct {v4, v5}, Lu/aly/df;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/de;-><init>(Ljava/lang/String;BLu/aly/df;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lu/aly/ay;->b:Lu/aly/ay;

    new-instance v2, Lu/aly/de;

    const-string v3, "old_id"

    new-instance v4, Lu/aly/df;

    invoke-direct {v4, v5}, Lu/aly/df;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/de;-><init>(Ljava/lang/String;BLu/aly/df;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lu/aly/ay;->c:Lu/aly/ay;

    new-instance v2, Lu/aly/de;

    const-string v3, "new_id"

    new-instance v4, Lu/aly/df;

    invoke-direct {v4, v5}, Lu/aly/df;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/de;-><init>(Ljava/lang/String;BLu/aly/df;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lu/aly/ay;->d:Lu/aly/ay;

    new-instance v2, Lu/aly/de;

    const-string v3, "ts"

    new-instance v4, Lu/aly/df;

    invoke-direct {v4, v8}, Lu/aly/df;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/de;-><init>(Ljava/lang/String;BLu/aly/df;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/at;->f:Ljava/util/Map;

    .line 144
    const-class v0, Lu/aly/at;

    sget-object v1, Lu/aly/at;->f:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/de;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 145
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-byte v2, p0, Lu/aly/at;->e:B

    .line 122
    const/4 v0, 0x1

    new-array v0, v0, [Lu/aly/ay;

    sget-object v1, Lu/aly/ay;->b:Lu/aly/ay;

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/at;->m:[Lu/aly/ay;

    .line 148
    return-void
.end method

.method static synthetic d()Lu/aly/du;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/at;->g:Lu/aly/du;

    return-object v0
.end method

.method static synthetic e()Lu/aly/dn;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/at;->h:Lu/aly/dn;

    return-object v0
.end method

.method static synthetic f()Lu/aly/dn;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/at;->i:Lu/aly/dn;

    return-object v0
.end method

.method static synthetic g()Lu/aly/dn;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/at;->j:Lu/aly/dn;

    return-object v0
.end method

.method static synthetic h()Lu/aly/dn;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/at;->k:Lu/aly/dn;

    return-object v0
.end method


# virtual methods
.method public final a(Lu/aly/dq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 300
    sget-object v0, Lu/aly/at;->l:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dq;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dx;

    invoke-interface {v0}, Lu/aly/dx;->a()Lu/aly/dw;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dw;->b(Lu/aly/dq;Lu/aly/cw;)V

    .line 301
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lu/aly/at;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 292
    iget-byte v0, p0, Lu/aly/at;->e:B

    .line 1137
    or-int/lit8 v0, v0, 0x1

    .line 1128
    int-to-byte v0, v0

    .line 292
    iput-byte v0, p0, Lu/aly/at;->e:B

    .line 293
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
    .line 304
    sget-object v0, Lu/aly/at;->l:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dq;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dx;

    invoke-interface {v0}, Lu/aly/dx;->a()Lu/aly/dw;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dw;->a(Lu/aly/dq;Lu/aly/cw;)V

    .line 305
    return-void
.end method

.method public final c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lu/aly/at;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'domain\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Lu/aly/at;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_0
    iget-object v0, p0, Lu/aly/at;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 355
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'new_id\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lu/aly/at;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdJournal("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    const-string v1, "domain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget-object v1, p0, Lu/aly/at;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 314
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :goto_0
    invoke-virtual {p0}, Lu/aly/at;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string v1, "old_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    iget-object v1, p0, Lu/aly/at;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 324
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_0
    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string v1, "new_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget-object v1, p0, Lu/aly/at;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 334
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :goto_2
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    iget-wide v2, p0, Lu/aly/at;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 344
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 316
    :cond_1
    iget-object v1, p0, Lu/aly/at;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 326
    :cond_2
    iget-object v1, p0, Lu/aly/at;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 336
    :cond_3
    iget-object v1, p0, Lu/aly/at;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
