.class Lcom/amap/api/mapcore2d/ay;
.super Ljava/lang/Object;
.source "Mediator.java"


# static fields
.field static a:D


# instance fields
.field public b:Lcom/amap/api/mapcore2d/ay$e;

.field public c:Lcom/amap/api/mapcore2d/ay$d;

.field public d:Lcom/amap/api/mapcore2d/ay$b;

.field public e:Lcom/amap/api/mapcore2d/ay$a;

.field public f:Lcom/amap/api/mapcore2d/ay$c;

.field public g:Lcom/amap/api/mapcore2d/t;

.field public h:Lcom/amap/api/mapcore2d/b;

.field public i:Lcom/amap/api/mapcore2d/au;

.field private j:Lcom/amap/api/mapcore2d/am;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-wide v0, 0x3fe4ccccc0000000L    # 0.6499999761581421

    sput-wide v0, Lcom/amap/api/mapcore2d/ay;->a:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/b;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v2, p0, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    .line 53
    iput-object p2, p0, Lcom/amap/api/mapcore2d/ay;->h:Lcom/amap/api/mapcore2d/b;

    .line 54
    new-instance v0, Lcom/amap/api/mapcore2d/ay$d;

    invoke-direct {v0, p0, p2, v2}, Lcom/amap/api/mapcore2d/ay$d;-><init>(Lcom/amap/api/mapcore2d/ay;Lcom/amap/api/mapcore2d/b;Lcom/amap/api/mapcore2d/ay$1;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    .line 55
    new-instance v0, Lcom/amap/api/mapcore2d/au;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/au;-><init>(Lcom/amap/api/mapcore2d/ay$d;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    .line 56
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iput p3, v0, Lcom/amap/api/mapcore2d/au;->a:I

    .line 57
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iput p3, v0, Lcom/amap/api/mapcore2d/au;->b:I

    .line 59
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/au;->a()V

    .line 60
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ay;->a(Landroid/content/Context;)V

    .line 62
    new-instance v0, Lcom/amap/api/mapcore2d/ay$c;

    invoke-direct {v0, p0, p0, p1, v2}, Lcom/amap/api/mapcore2d/ay$c;-><init>(Lcom/amap/api/mapcore2d/ay;Lcom/amap/api/mapcore2d/ay;Landroid/content/Context;Lcom/amap/api/mapcore2d/ay$1;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay;->f:Lcom/amap/api/mapcore2d/ay$c;

    .line 63
    new-instance v0, Lcom/amap/api/mapcore2d/ay$a;

    invoke-direct {v0, p0, p1, v2}, Lcom/amap/api/mapcore2d/ay$a;-><init>(Lcom/amap/api/mapcore2d/ay;Landroid/content/Context;Lcom/amap/api/mapcore2d/ay$1;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    .line 64
    new-instance v0, Lcom/amap/api/mapcore2d/ay$e;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/ay$e;-><init>(Lcom/amap/api/mapcore2d/ay;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay;->b:Lcom/amap/api/mapcore2d/ay$e;

    .line 65
    new-instance v0, Lcom/amap/api/mapcore2d/ay$b;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/ay$b;-><init>(Lcom/amap/api/mapcore2d/ay;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay;->d:Lcom/amap/api/mapcore2d/ay$b;

    .line 66
    new-instance v0, Lcom/amap/api/mapcore2d/t;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/t;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay;->g:Lcom/amap/api/mapcore2d/t;

    .line 67
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0, v3, v3}, Lcom/amap/api/mapcore2d/ay$d;->a(ZZ)V

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/am;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->j:Lcom/amap/api/mapcore2d/am;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/ay;Lcom/amap/api/mapcore2d/am;)Lcom/amap/api/mapcore2d/am;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ay;->j:Lcom/amap/api/mapcore2d/am;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$a;->a()V

    .line 131
    iput-object v1, p0, Lcom/amap/api/mapcore2d/ay;->b:Lcom/amap/api/mapcore2d/ay$e;

    .line 132
    iput-object v1, p0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    .line 133
    iput-object v1, p0, Lcom/amap/api/mapcore2d/ay;->d:Lcom/amap/api/mapcore2d/ay$b;

    .line 134
    iput-object v1, p0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    .line 135
    iput-object v1, p0, Lcom/amap/api/mapcore2d/ay;->f:Lcom/amap/api/mapcore2d/ay$c;

    .line 137
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 13

    .prologue
    const/16 v1, 0xa0

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const-wide/32 v8, 0x25800

    .line 71
    const-string v3, "initialize"

    .line 78
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 80
    const/4 v2, 0x0

    .line 82
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v5, "densityDpi"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 90
    :goto_0
    if-eqz v0, :cond_4

    .line 93
    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v2, v5

    int-to-long v6, v2

    .line 95
    :try_start_1
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v0

    .line 101
    :goto_1
    const/16 v2, 0x78

    if-gt v0, v2, :cond_0

    .line 102
    sput v10, Lcom/amap/api/mapcore2d/p;->l:I

    .line 126
    :goto_2
    return-void

    .line 84
    :catch_0
    move-exception v0

    const-string v5, "Mediator"

    invoke-static {v0, v5, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 87
    goto :goto_0

    .line 86
    :catch_1
    move-exception v0

    const-string v5, "Mediator"

    invoke-static {v0, v5, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    .line 97
    :catch_2
    move-exception v0

    const-string v2, "Mediator"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 100
    goto :goto_1

    .line 99
    :catch_3
    move-exception v0

    const-string v2, "Mediator"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    .line 103
    :cond_0
    if-le v0, v1, :cond_3

    .line 105
    const/16 v1, 0xf0

    if-gt v0, v1, :cond_1

    .line 106
    sput v11, Lcom/amap/api/mapcore2d/p;->l:I

    goto :goto_2

    .line 108
    :cond_1
    cmp-long v0, v6, v8

    if-lez v0, :cond_2

    .line 109
    sput v11, Lcom/amap/api/mapcore2d/p;->l:I

    goto :goto_2

    .line 110
    :cond_2
    cmp-long v0, v6, v8

    if-gez v0, :cond_3

    .line 111
    sput v10, Lcom/amap/api/mapcore2d/p;->l:I

    goto :goto_2

    .line 113
    :cond_3
    sput v12, Lcom/amap/api/mapcore2d/p;->l:I

    goto :goto_2

    .line 117
    :cond_4
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v1

    int-to-long v0, v0

    .line 118
    cmp-long v2, v0, v8

    if-lez v2, :cond_5

    .line 119
    sput v11, Lcom/amap/api/mapcore2d/p;->l:I

    goto :goto_2

    .line 120
    :cond_5
    cmp-long v0, v0, v8

    if-gez v0, :cond_6

    .line 121
    sput v10, Lcom/amap/api/mapcore2d/p;->l:I

    goto :goto_2

    .line 123
    :cond_6
    sput v12, Lcom/amap/api/mapcore2d/p;->l:I

    goto :goto_2
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay;->e:Lcom/amap/api/mapcore2d/ay$a;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/ay$a;->b(Z)V

    .line 141
    return-void
.end method
