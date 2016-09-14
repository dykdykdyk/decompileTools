.class final Lcom/nut/blehunter/qrcode/g;
.super Ljava/lang/Object;
.source "DecodeFormatManager.java"


# static fields
.field static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/a;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/a;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/a;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/a;",
            ">;"
        }
    .end annotation
.end field

.field static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/a;",
            ">;"
        }
    .end annotation
.end field

.field static final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/regex/Pattern;

.field private static final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 34
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/nut/blehunter/qrcode/g;->g:Ljava/util/regex/Pattern;

    .line 39
    sget-object v0, Lcom/google/zxing/a;->l:Lcom/google/zxing/a;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/nut/blehunter/qrcode/g;->c:Ljava/util/Set;

    .line 40
    sget-object v0, Lcom/google/zxing/a;->f:Lcom/google/zxing/a;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/nut/blehunter/qrcode/g;->d:Ljava/util/Set;

    .line 41
    sget-object v0, Lcom/google/zxing/a;->a:Lcom/google/zxing/a;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/nut/blehunter/qrcode/g;->e:Ljava/util/Set;

    .line 42
    sget-object v0, Lcom/google/zxing/a;->k:Lcom/google/zxing/a;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/nut/blehunter/qrcode/g;->f:Ljava/util/Set;

    .line 45
    sget-object v0, Lcom/google/zxing/a;->o:Lcom/google/zxing/a;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/google/zxing/a;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/zxing/a;->p:Lcom/google/zxing/a;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/zxing/a;->h:Lcom/google/zxing/a;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/google/zxing/a;->g:Lcom/google/zxing/a;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/google/zxing/a;->m:Lcom/google/zxing/a;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/google/zxing/a;->n:Lcom/google/zxing/a;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/nut/blehunter/qrcode/g;->a:Ljava/util/Set;

    .line 51
    sget-object v0, Lcom/google/zxing/a;->c:Lcom/google/zxing/a;

    sget-object v1, Lcom/google/zxing/a;->d:Lcom/google/zxing/a;

    sget-object v2, Lcom/google/zxing/a;->e:Lcom/google/zxing/a;

    sget-object v3, Lcom/google/zxing/a;->i:Lcom/google/zxing/a;

    sget-object v4, Lcom/google/zxing/a;->b:Lcom/google/zxing/a;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/nut/blehunter/qrcode/g;->b:Ljava/util/Set;

    .line 56
    sget-object v0, Lcom/nut/blehunter/qrcode/g;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    .line 57
    sput-object v0, Lcom/nut/blehunter/qrcode/g;->h:Ljava/util/Set;

    sget-object v1, Lcom/nut/blehunter/qrcode/g;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    sput-object v0, Lcom/nut/blehunter/qrcode/g;->i:Ljava/util/Map;

    const-string v1, "ONE_D_MODE"

    sget-object v2, Lcom/nut/blehunter/qrcode/g;->h:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/nut/blehunter/qrcode/g;->i:Ljava/util/Map;

    const-string v1, "PRODUCT_MODE"

    sget-object v2, Lcom/nut/blehunter/qrcode/g;->a:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/nut/blehunter/qrcode/g;->i:Ljava/util/Map;

    const-string v1, "QR_CODE_MODE"

    sget-object v2, Lcom/nut/blehunter/qrcode/g;->c:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/nut/blehunter/qrcode/g;->i:Ljava/util/Map;

    const-string v1, "DATA_MATRIX_MODE"

    sget-object v2, Lcom/nut/blehunter/qrcode/g;->d:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/nut/blehunter/qrcode/g;->i:Ljava/util/Map;

    const-string v1, "AZTEC_MODE"

    sget-object v2, Lcom/nut/blehunter/qrcode/g;->e:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/nut/blehunter/qrcode/g;->i:Ljava/util/Map;

    const-string v1, "PDF417_MODE"

    sget-object v2, Lcom/nut/blehunter/qrcode/g;->f:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method static a(Landroid/content/Intent;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    const-string v1, "SCAN_FORMATS"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_0

    .line 79
    sget-object v0, Lcom/nut/blehunter/qrcode/g;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 81
    :cond_0
    const-string v1, "SCAN_MODE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nut/blehunter/qrcode/g;->a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    if-eqz p0, :cond_0

    .line 94
    const-class v0, Lcom/google/zxing/a;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 96
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    invoke-static {v0}, Lcom/google/zxing/a;->valueOf(Ljava/lang/String;)Lcom/google/zxing/a;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 104
    :cond_0
    if-eqz p1, :cond_2

    .line 105
    sget-object v0, Lcom/nut/blehunter/qrcode/g;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 107
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    .line 99
    goto :goto_1

    .line 107
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
