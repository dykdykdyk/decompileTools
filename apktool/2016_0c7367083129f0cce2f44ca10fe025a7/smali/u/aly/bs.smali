.class public Lu/aly/bs;
.super Ljava/lang/Object;
.source "ImprintValue.java"

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
        "Lu/aly/bs;",
        "Lu/aly/by;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/by;",
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
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;

.field d:B

.field private k:[Lu/aly/by;


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

    const-string v1, "ImprintValue"

    invoke-direct {v0, v1}, Lu/aly/du;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bs;->f:Lu/aly/du;

    .line 28
    new-instance v0, Lu/aly/dn;

    const-string v1, "value"

    invoke-direct {v0, v1, v5, v6}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bs;->g:Lu/aly/dn;

    .line 30
    new-instance v0, Lu/aly/dn;

    const-string v1, "ts"

    invoke-direct {v0, v1, v8, v7}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bs;->h:Lu/aly/dn;

    .line 32
    new-instance v0, Lu/aly/dn;

    const-string v1, "guid"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bs;->i:Lu/aly/dn;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    sput-object v0, Lu/aly/bs;->j:Ljava/util/Map;

    const-class v1, Lu/aly/dy;

    new-instance v2, Lu/aly/bu;

    invoke-direct {v2, v3}, Lu/aly/bu;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lu/aly/bs;->j:Ljava/util/Map;

    const-class v1, Lu/aly/dz;

    new-instance v2, Lu/aly/bx;

    invoke-direct {v2, v3}, Lu/aly/bx;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/by;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 123
    sget-object v1, Lu/aly/by;->a:Lu/aly/by;

    new-instance v2, Lu/aly/de;

    const-string v3, "value"

    new-instance v4, Lu/aly/df;

    invoke-direct {v4, v5}, Lu/aly/df;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/de;-><init>(Ljava/lang/String;BLu/aly/df;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Lu/aly/by;->b:Lu/aly/by;

    new-instance v2, Lu/aly/de;

    const-string v3, "ts"

    new-instance v4, Lu/aly/df;

    invoke-direct {v4, v8}, Lu/aly/df;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/de;-><init>(Ljava/lang/String;BLu/aly/df;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Lu/aly/by;->c:Lu/aly/by;

    new-instance v2, Lu/aly/de;

    const-string v3, "guid"

    new-instance v4, Lu/aly/df;

    invoke-direct {v4, v5}, Lu/aly/df;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/de;-><init>(Ljava/lang/String;BLu/aly/df;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bs;->e:Ljava/util/Map;

    .line 133
    const-class v0, Lu/aly/bs;

    sget-object v1, Lu/aly/bs;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/de;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 134
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-byte v2, p0, Lu/aly/bs;->d:B

    .line 117
    const/4 v0, 0x1

    new-array v0, v0, [Lu/aly/by;

    sget-object v1, Lu/aly/by;->a:Lu/aly/by;

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/bs;->k:[Lu/aly/by;

    .line 137
    return-void
.end method

.method static synthetic d()Lu/aly/du;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/bs;->f:Lu/aly/du;

    return-object v0
.end method

.method static synthetic e()Lu/aly/dn;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/bs;->g:Lu/aly/dn;

    return-object v0
.end method

.method static synthetic f()Lu/aly/dn;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/bs;->h:Lu/aly/dn;

    return-object v0
.end method

.method static synthetic g()Lu/aly/dn;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/bs;->i:Lu/aly/dn;

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
    .line 257
    sget-object v0, Lu/aly/bs;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dq;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dx;

    invoke-interface {v0}, Lu/aly/dx;->a()Lu/aly/dw;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dw;->b(Lu/aly/dq;Lu/aly/cw;)V

    .line 258
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lu/aly/bs;->a:Ljava/lang/String;

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
    .line 222
    iget-byte v0, p0, Lu/aly/bs;->d:B

    .line 1137
    or-int/lit8 v0, v0, 0x1

    .line 1128
    int-to-byte v0, v0

    .line 222
    iput-byte v0, p0, Lu/aly/bs;->d:B

    .line 223
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
    .line 261
    sget-object v0, Lu/aly/bs;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dq;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dx;

    invoke-interface {v0}, Lu/aly/dx;->a()Lu/aly/dw;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dw;->a(Lu/aly/dq;Lu/aly/cw;)V

    .line 262
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
    .line 300
    iget-object v0, p0, Lu/aly/bs;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'guid\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lu/aly/bs;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "ImprintValue("

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x1

    .line 269
    invoke-virtual {p0}, Lu/aly/bs;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    const-string v0, "value:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-object v0, p0, Lu/aly/bs;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 272
    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :goto_0
    const/4 v0, 0x0

    .line 278
    :cond_0
    if-nez v0, :cond_1

    .line 279
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_1
    const-string v0, "ts:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget-wide v2, p0, Lu/aly/bs;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 284
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const-string v0, "guid:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-object v0, p0, Lu/aly/bs;->c:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 287
    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :goto_1
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 274
    :cond_2
    iget-object v0, p0, Lu/aly/bs;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 289
    :cond_3
    iget-object v0, p0, Lu/aly/bs;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
