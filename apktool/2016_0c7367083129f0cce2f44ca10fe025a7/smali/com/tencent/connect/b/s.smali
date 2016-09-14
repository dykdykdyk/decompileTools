.class public Lcom/tencent/connect/b/s;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static a:Lcom/tencent/connect/b/s;

.field static final synthetic d:Z

.field private static e:I


# instance fields
.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/connect/b/t;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    const-class v0, Lcom/tencent/connect/b/s;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/connect/b/s;->d:Z

    .line 11
    sput v1, Lcom/tencent/connect/b/s;->e:I

    return-void

    :cond_0
    move v0, v1

    .line 8
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/connect/b/s;->b:Ljava/util/HashMap;

    .line 53
    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    iput-object v0, p0, Lcom/tencent/connect/b/s;->c:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/tencent/connect/b/s;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/tencent/connect/b/s;->a:Lcom/tencent/connect/b/s;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/tencent/connect/b/s;

    invoke-direct {v0}, Lcom/tencent/connect/b/s;-><init>()V

    sput-object v0, Lcom/tencent/connect/b/s;->a:Lcom/tencent/connect/b/s;

    .line 25
    :cond_0
    sget-object v0, Lcom/tencent/connect/b/s;->a:Lcom/tencent/connect/b/s;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 10

    .prologue
    .line 56
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    .line 57
    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 58
    array-length v3, v2

    .line 59
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 60
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 61
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    int-to-double v8, v3

    mul-double/2addr v6, v8

    double-to-int v5, v6

    .line 62
    aget-char v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/connect/b/t;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1035
    sget v0, Lcom/tencent/connect/b/s;->e:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/tencent/connect/b/s;->e:I

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/tencent/connect/b/s;->b:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 44
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
