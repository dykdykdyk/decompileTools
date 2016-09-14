.class public final Lcom/umeng/analytics/a;
.super Ljava/lang/Object;
.source "AnalyticsConfig.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Z

.field public static f:Z

.field public static g:Z

.field public static h:Z

.field public static i:J

.field public static j:Z

.field public static k:I

.field static l:[D

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 17
    sput-object v2, Lcom/umeng/analytics/a;->m:Ljava/lang/String;

    .line 18
    sput-object v2, Lcom/umeng/analytics/a;->n:Ljava/lang/String;

    .line 19
    sput-object v2, Lcom/umeng/analytics/a;->o:Ljava/lang/String;

    .line 21
    sput-object v2, Lcom/umeng/analytics/a;->a:Ljava/lang/String;

    .line 22
    sput-object v2, Lcom/umeng/analytics/a;->b:Ljava/lang/String;

    .line 24
    sput v3, Lcom/umeng/analytics/a;->p:I

    .line 25
    const-string v0, ""

    sput-object v0, Lcom/umeng/analytics/a;->c:Ljava/lang/String;

    .line 26
    const-string v0, ""

    sput-object v0, Lcom/umeng/analytics/a;->d:Ljava/lang/String;

    .line 28
    sput-boolean v1, Lcom/umeng/analytics/a;->e:Z

    .line 29
    sput-boolean v1, Lcom/umeng/analytics/a;->f:Z

    .line 30
    sput-boolean v1, Lcom/umeng/analytics/a;->g:Z

    .line 31
    sput-boolean v1, Lcom/umeng/analytics/a;->h:Z

    .line 32
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/umeng/analytics/a;->i:J

    .line 35
    sput-boolean v3, Lcom/umeng/analytics/a;->j:Z

    .line 42
    sput-object v2, Lcom/umeng/analytics/a;->l:[D

    .line 49
    sput-boolean v3, Lcom/umeng/analytics/a;->j:Z

    .line 51
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/umeng/analytics/a;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {p0}, Lu/aly/cr;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 91
    sput-object v0, Lcom/umeng/analytics/a;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {p0}, Lcom/umeng/analytics/aa;->a(Landroid/content/Context;)Lcom/umeng/analytics/aa;

    invoke-static {}, Lcom/umeng/analytics/aa;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/a;->m:Ljava/lang/String;

    .line 96
    :cond_0
    sget-object v0, Lcom/umeng/analytics/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static a()[D
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/umeng/analytics/a;->l:[D

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-string v0, "6.0.1"

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/umeng/analytics/a;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p0}, Lu/aly/cr;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/a;->n:Ljava/lang/String;

    .line 103
    :cond_0
    sget-object v0, Lcom/umeng/analytics/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/umeng/analytics/a;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {p0}, Lcom/umeng/analytics/aa;->a(Landroid/content/Context;)Lcom/umeng/analytics/aa;

    invoke-static {}, Lcom/umeng/analytics/aa;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/a;->o:Ljava/lang/String;

    .line 133
    :cond_0
    sget-object v0, Lcom/umeng/analytics/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 142
    sget v0, Lcom/umeng/analytics/a;->p:I

    if-nez v0, :cond_0

    .line 143
    invoke-static {p0}, Lcom/umeng/analytics/aa;->a(Landroid/content/Context;)Lcom/umeng/analytics/aa;

    invoke-static {}, Lcom/umeng/analytics/aa;->c()I

    move-result v0

    sput v0, Lcom/umeng/analytics/a;->p:I

    .line 145
    :cond_0
    sget v0, Lcom/umeng/analytics/a;->p:I

    return v0
.end method
