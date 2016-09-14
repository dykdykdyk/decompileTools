.class public final Lcom/google/zxing/b/a/j;
.super Lcom/google/zxing/b/a/a;
.source "EmailDoCoMoResultParser.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "[a-zA-Z0-9@.!#$%&\'*+\\-/=?^_`{|}~]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/b/a/j;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/zxing/b/a/a;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 61
    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/zxing/b/a/j;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/b/a/q;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 30
    .line 1036
    invoke-static {p1}, Lcom/google/zxing/b/a/j;->b(Lcom/google/zxing/m;)Ljava/lang/String;

    move-result-object v5

    .line 1037
    const-string v0, "MATMSG:"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1046
    :cond_0
    :goto_0
    return-object v2

    .line 1040
    :cond_1
    const-string v0, "TO:"

    invoke-static {v0, v5}, Lcom/google/zxing/b/a/j;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1041
    if-eqz v1, :cond_0

    .line 1044
    array-length v4, v1

    move v0, v3

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v6, v1, v0

    .line 1045
    invoke-static {v6}, Lcom/google/zxing/b/a/j;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1044
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1049
    :cond_2
    const-string v0, "SUB:"

    invoke-static {v0, v5, v3}, Lcom/google/zxing/b/a/j;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1050
    const-string v0, "BODY:"

    invoke-static {v0, v5, v3}, Lcom/google/zxing/b/a/j;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 1051
    new-instance v0, Lcom/google/zxing/b/a/h;

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/b/a/h;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 30
    goto :goto_0
.end method
