.class public Lu/aly/bl;
.super Ljava/lang/Object;
.source "Imprint.java"

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
        "Lu/aly/bl;",
        "Lu/aly/br;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/br;",
            "Lu/aly/de;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lu/aly/du;

.field private static final g:Lu/aly/dn;

.field private static final h:Lu/aly/dn;

.field private static final i:Lu/aly/dn;

.field private static final j:Ljava/util/Map;
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
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/bs;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Ljava/lang/String;

.field d:B


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v3, 0x0

    const/16 v9, 0xb

    const/4 v8, 0x1

    .line 23
    new-instance v0, Lu/aly/du;

    const-string v1, "Imprint"

    invoke-direct {v0, v1}, Lu/aly/du;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bl;->f:Lu/aly/du;

    .line 26
    new-instance v0, Lu/aly/dn;

    const-string v1, "property"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v8}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bl;->g:Lu/aly/dn;

    .line 28
    new-instance v0, Lu/aly/dn;

    const-string v1, "version"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v10, v2}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bl;->h:Lu/aly/dn;

    .line 30
    new-instance v0, Lu/aly/dn;

    const-string v1, "checksum"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v2}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bl;->i:Lu/aly/dn;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    sput-object v0, Lu/aly/bl;->j:Ljava/util/Map;

    const-class v1, Lu/aly/dy;

    new-instance v2, Lu/aly/bn;

    invoke-direct {v2, v3}, Lu/aly/bn;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lu/aly/bl;->j:Ljava/util/Map;

    const-class v1, Lu/aly/dz;

    new-instance v2, Lu/aly/bq;

    invoke-direct {v2, v3}, Lu/aly/bq;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/br;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 120
    sget-object v1, Lu/aly/br;->a:Lu/aly/br;

    new-instance v2, Lu/aly/de;

    const-string v3, "property"

    new-instance v4, Lu/aly/dh;

    new-instance v5, Lu/aly/df;

    invoke-direct {v5, v9}, Lu/aly/df;-><init>(B)V

    new-instance v6, Lu/aly/di;

    const-class v7, Lu/aly/bs;

    invoke-direct {v6, v7}, Lu/aly/di;-><init>(Ljava/lang/Class;)V

    invoke-direct {v4, v5, v6}, Lu/aly/dh;-><init>(Lu/aly/df;Lu/aly/df;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/de;-><init>(Ljava/lang/String;BLu/aly/df;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v1, Lu/aly/br;->b:Lu/aly/br;

    new-instance v2, Lu/aly/de;

    const-string v3, "version"

    new-instance v4, Lu/aly/df;

    invoke-direct {v4, v10}, Lu/aly/df;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/de;-><init>(Ljava/lang/String;BLu/aly/df;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lu/aly/br;->c:Lu/aly/br;

    new-instance v2, Lu/aly/de;

    const-string v3, "checksum"

    new-instance v4, Lu/aly/df;

    invoke-direct {v4, v9}, Lu/aly/df;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/de;-><init>(Ljava/lang/String;BLu/aly/df;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bl;->e:Ljava/util/Map;

    .line 137
    const-class v0, Lu/aly/bl;

    sget-object v1, Lu/aly/bl;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/de;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 138
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/bl;->d:B

    .line 141
    return-void
.end method

.method static synthetic d()Lu/aly/du;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lu/aly/bl;->f:Lu/aly/du;

    return-object v0
.end method

.method static synthetic e()Lu/aly/dn;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lu/aly/bl;->g:Lu/aly/dn;

    return-object v0
.end method

.method static synthetic f()Lu/aly/dn;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lu/aly/bl;->h:Lu/aly/dn;

    return-object v0
.end method

.method static synthetic g()Lu/aly/dn;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lu/aly/bl;->i:Lu/aly/dn;

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
    .line 285
    sget-object v0, Lu/aly/bl;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dq;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dx;

    invoke-interface {v0}, Lu/aly/dx;->a()Lu/aly/dw;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dw;->b(Lu/aly/dq;Lu/aly/cw;)V

    .line 286
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lu/aly/bl;->a:Ljava/util/Map;

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
    .line 250
    iget-byte v0, p0, Lu/aly/bl;->d:B

    .line 1137
    or-int/lit8 v0, v0, 0x1

    .line 1128
    int-to-byte v0, v0

    .line 250
    iput-byte v0, p0, Lu/aly/bl;->d:B

    .line 251
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
    .line 289
    sget-object v0, Lu/aly/bl;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dq;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dx;

    invoke-interface {v0}, Lu/aly/dx;->a()Lu/aly/dw;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dw;->a(Lu/aly/dq;Lu/aly/cw;)V

    .line 290
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
    .line 324
    iget-object v0, p0, Lu/aly/bl;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'property\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lu/aly/bl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_0
    iget-object v0, p0, Lu/aly/bl;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 331
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'checksum\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lu/aly/bl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Imprint("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    const-string v1, "property:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object v1, p0, Lu/aly/bl;->a:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 299
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    iget v1, p0, Lu/aly/bl;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string v1, "checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget-object v1, p0, Lu/aly/bl;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 313
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 301
    :cond_0
    iget-object v1, p0, Lu/aly/bl;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 315
    :cond_1
    iget-object v1, p0, Lu/aly/bl;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
