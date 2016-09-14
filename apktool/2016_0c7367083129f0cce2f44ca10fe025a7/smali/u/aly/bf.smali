.class public Lu/aly/bf;
.super Ljava/lang/Object;
.source "IdTracking.java"

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
        "Lu/aly/bf;",
        "Lu/aly/bk;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/bk;",
            "Lu/aly/de;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lu/aly/du;

.field private static final f:Lu/aly/dn;

.field private static final g:Lu/aly/dn;

.field private static final h:Lu/aly/dn;

.field private static final i:Ljava/util/Map;
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
            "Lu/aly/az;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/at;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field private j:[Lu/aly/bk;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/16 v9, 0xb

    const/4 v8, 0x2

    .line 26
    new-instance v0, Lu/aly/du;

    const-string v1, "IdTracking"

    invoke-direct {v0, v1}, Lu/aly/du;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bf;->e:Lu/aly/du;

    .line 29
    new-instance v0, Lu/aly/dn;

    const-string v1, "snapshots"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v10}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bf;->f:Lu/aly/dn;

    .line 31
    new-instance v0, Lu/aly/dn;

    const-string v1, "journals"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v8}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bf;->g:Lu/aly/dn;

    .line 33
    new-instance v0, Lu/aly/dn;

    const-string v1, "checksum"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v2}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bf;->h:Lu/aly/dn;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    sput-object v0, Lu/aly/bf;->i:Ljava/util/Map;

    const-class v1, Lu/aly/dy;

    new-instance v2, Lu/aly/bh;

    invoke-direct {v2, v3}, Lu/aly/bh;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lu/aly/bf;->i:Ljava/util/Map;

    const-class v1, Lu/aly/dz;

    new-instance v2, Lu/aly/bj;

    invoke-direct {v2, v3}, Lu/aly/bj;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bk;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 122
    sget-object v1, Lu/aly/bk;->a:Lu/aly/bk;

    new-instance v2, Lu/aly/de;

    const-string v3, "snapshots"

    new-instance v4, Lu/aly/dh;

    new-instance v5, Lu/aly/df;

    invoke-direct {v5, v9}, Lu/aly/df;-><init>(B)V

    new-instance v6, Lu/aly/di;

    const-class v7, Lu/aly/az;

    invoke-direct {v6, v7}, Lu/aly/di;-><init>(Ljava/lang/Class;)V

    invoke-direct {v4, v5, v6}, Lu/aly/dh;-><init>(Lu/aly/df;Lu/aly/df;)V

    invoke-direct {v2, v3, v10, v4}, Lu/aly/de;-><init>(Ljava/lang/String;BLu/aly/df;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lu/aly/bk;->b:Lu/aly/bk;

    new-instance v2, Lu/aly/de;

    const-string v3, "journals"

    new-instance v4, Lu/aly/dg;

    new-instance v5, Lu/aly/di;

    const-class v6, Lu/aly/at;

    invoke-direct {v5, v6}, Lu/aly/di;-><init>(Ljava/lang/Class;)V

    invoke-direct {v4, v5}, Lu/aly/dg;-><init>(Lu/aly/df;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/de;-><init>(Ljava/lang/String;BLu/aly/df;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lu/aly/bk;->c:Lu/aly/bk;

    new-instance v2, Lu/aly/de;

    const-string v3, "checksum"

    new-instance v4, Lu/aly/df;

    invoke-direct {v4, v9}, Lu/aly/df;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/de;-><init>(Ljava/lang/String;BLu/aly/df;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bf;->d:Ljava/util/Map;

    .line 141
    const-class v0, Lu/aly/bf;

    sget-object v1, Lu/aly/bf;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/de;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 142
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [Lu/aly/bk;

    const/4 v1, 0x0

    sget-object v2, Lu/aly/bk;->b:Lu/aly/bk;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lu/aly/bk;->c:Lu/aly/bk;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/bf;->j:[Lu/aly/bk;

    .line 145
    return-void
.end method

.method static synthetic d()Lu/aly/du;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/bf;->e:Lu/aly/du;

    return-object v0
.end method

.method static synthetic e()Lu/aly/dn;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/bf;->f:Lu/aly/dn;

    return-object v0
.end method

.method static synthetic f()Lu/aly/dn;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/bf;->g:Lu/aly/dn;

    return-object v0
.end method

.method static synthetic g()Lu/aly/dn;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lu/aly/bf;->h:Lu/aly/dn;

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
    .line 306
    sget-object v0, Lu/aly/bf;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dq;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dx;

    invoke-interface {v0}, Lu/aly/dx;->a()Lu/aly/dw;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dw;->b(Lu/aly/dq;Lu/aly/cw;)V

    .line 307
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bf;->b:Ljava/util/List;

    .line 272
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lu/aly/bf;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lu/aly/dq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 310
    sget-object v0, Lu/aly/bf;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dq;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dx;

    invoke-interface {v0}, Lu/aly/dx;->a()Lu/aly/dw;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dw;->a(Lu/aly/dq;Lu/aly/cw;)V

    .line 311
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lu/aly/bf;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lu/aly/bf;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'snapshots\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lu/aly/bf;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdTracking("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    const-string v1, "snapshots:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    iget-object v1, p0, Lu/aly/bf;->a:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 320
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :goto_0
    invoke-virtual {p0}, Lu/aly/bf;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v1, "journals:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget-object v1, p0, Lu/aly/bf;->b:Ljava/util/List;

    if-nez v1, :cond_3

    .line 330
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lu/aly/bf;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const-string v1, "checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    iget-object v1, p0, Lu/aly/bf;->c:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 341
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_1
    :goto_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 322
    :cond_2
    iget-object v1, p0, Lu/aly/bf;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 332
    :cond_3
    iget-object v1, p0, Lu/aly/bf;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 343
    :cond_4
    iget-object v1, p0, Lu/aly/bf;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
