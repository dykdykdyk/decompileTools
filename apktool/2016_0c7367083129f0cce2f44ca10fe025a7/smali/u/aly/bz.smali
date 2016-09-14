.class public Lu/aly/bz;
.super Ljava/lang/Object;
.source "Response.java"

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
        "Lu/aly/bz;",
        "Lu/aly/ce;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/ce;",
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
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Lu/aly/bl;

.field d:B

.field private k:[Lu/aly/ce;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xb

    const/16 v7, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x2

    .line 24
    new-instance v0, Lu/aly/du;

    const-string v1, "Response"

    invoke-direct {v0, v1}, Lu/aly/du;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bz;->f:Lu/aly/du;

    .line 27
    new-instance v0, Lu/aly/dn;

    const-string v1, "resp_code"

    invoke-direct {v0, v1, v7, v5}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bz;->g:Lu/aly/dn;

    .line 29
    new-instance v0, Lu/aly/dn;

    const-string v1, "msg"

    invoke-direct {v0, v1, v8, v6}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bz;->h:Lu/aly/dn;

    .line 31
    new-instance v0, Lu/aly/dn;

    const-string v1, "imprint"

    const/16 v2, 0xc

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lu/aly/dn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bz;->i:Lu/aly/dn;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    sput-object v0, Lu/aly/bz;->j:Ljava/util/Map;

    const-class v1, Lu/aly/dy;

    new-instance v2, Lu/aly/cb;

    invoke-direct {v2, v4}, Lu/aly/cb;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lu/aly/bz;->j:Ljava/util/Map;

    const-class v1, Lu/aly/dz;

    new-instance v2, Lu/aly/cd;

    invoke-direct {v2, v4}, Lu/aly/cd;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/ce;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 122
    sget-object v1, Lu/aly/ce;->a:Lu/aly/ce;

    new-instance v2, Lu/aly/de;

    const-string v3, "resp_code"

    new-instance v4, Lu/aly/df;

    invoke-direct {v4, v7}, Lu/aly/df;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/de;-><init>(Ljava/lang/String;BLu/aly/df;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Lu/aly/ce;->b:Lu/aly/ce;

    new-instance v2, Lu/aly/de;

    const-string v3, "msg"

    new-instance v4, Lu/aly/df;

    invoke-direct {v4, v8}, Lu/aly/df;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/de;-><init>(Ljava/lang/String;BLu/aly/df;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Lu/aly/ce;->c:Lu/aly/ce;

    new-instance v2, Lu/aly/de;

    const-string v3, "imprint"

    new-instance v4, Lu/aly/di;

    const-class v5, Lu/aly/bl;

    invoke-direct {v4, v5}, Lu/aly/di;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/de;-><init>(Ljava/lang/String;BLu/aly/df;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bz;->e:Ljava/util/Map;

    .line 135
    const-class v0, Lu/aly/bz;

    sget-object v1, Lu/aly/bz;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/de;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 136
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-byte v2, p0, Lu/aly/bz;->d:B

    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [Lu/aly/ce;

    sget-object v1, Lu/aly/ce;->b:Lu/aly/ce;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lu/aly/ce;->c:Lu/aly/ce;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/bz;->k:[Lu/aly/ce;

    .line 139
    return-void
.end method

.method static synthetic e()Lu/aly/du;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/bz;->f:Lu/aly/du;

    return-object v0
.end method

.method static synthetic f()Lu/aly/dn;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/bz;->g:Lu/aly/dn;

    return-object v0
.end method

.method static synthetic g()Lu/aly/dn;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/bz;->h:Lu/aly/dn;

    return-object v0
.end method

.method static synthetic h()Lu/aly/dn;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/bz;->i:Lu/aly/dn;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 196
    iget-byte v0, p0, Lu/aly/bz;->d:B

    .line 1137
    or-int/lit8 v0, v0, 0x1

    .line 1128
    int-to-byte v0, v0

    .line 196
    iput-byte v0, p0, Lu/aly/bz;->d:B

    .line 197
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
    .line 258
    sget-object v0, Lu/aly/bz;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dq;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dx;

    invoke-interface {v0}, Lu/aly/dx;->a()Lu/aly/dw;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dw;->b(Lu/aly/dq;Lu/aly/cw;)V

    .line 259
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
    .line 262
    sget-object v0, Lu/aly/bz;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dq;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dx;

    invoke-interface {v0}, Lu/aly/dx;->a()Lu/aly/dw;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dw;->a(Lu/aly/dq;Lu/aly/cw;)V

    .line 263
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lu/aly/bz;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lu/aly/bz;->c:Lu/aly/bl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lu/aly/bz;->c:Lu/aly/bl;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lu/aly/bz;->c:Lu/aly/bl;

    invoke-virtual {v0}, Lu/aly/bl;->c()V

    .line 307
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    const-string v1, "resp_code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget v1, p0, Lu/aly/bz;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {p0}, Lu/aly/bz;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string v1, "msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget-object v1, p0, Lu/aly/bz;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 278
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lu/aly/bz;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string v1, "imprint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-object v1, p0, Lu/aly/bz;->c:Lu/aly/bl;

    if-nez v1, :cond_3

    .line 289
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_1
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 280
    :cond_2
    iget-object v1, p0, Lu/aly/bz;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 291
    :cond_3
    iget-object v1, p0, Lu/aly/bz;->c:Lu/aly/bl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
