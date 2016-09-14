.class public final Lcom/umeng/analytics/x;
.super Ljava/lang/Object;
.source "InternalConfig.java"


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/umeng/analytics/x;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 25
    sget-object v1, Lcom/umeng/analytics/x;->a:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/umeng/analytics/x;->a:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 26
    sget-object v0, Lcom/umeng/analytics/x;->a:[Ljava/lang/String;

    .line 37
    :cond_0
    :goto_0
    return-object v0

    .line 29
    :cond_1
    if-eqz p0, :cond_0

    .line 30
    invoke-static {p0}, Lcom/umeng/analytics/aa;->a(Landroid/content/Context;)Lcom/umeng/analytics/aa;

    .line 1097
    invoke-static {}, Lcom/umeng/analytics/aa;->g()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1098
    const-string v2, "au_p"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1099
    const-string v3, "au_u"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1100
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 1101
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    .line 31
    :goto_1
    if-eqz v1, :cond_0

    .line 32
    sget-object v0, Lcom/umeng/analytics/x;->a:[Ljava/lang/String;

    aget-object v2, v1, v4

    aput-object v2, v0, v4

    .line 33
    sget-object v0, Lcom/umeng/analytics/x;->a:[Ljava/lang/String;

    aget-object v1, v1, v5

    aput-object v1, v0, v5

    .line 34
    sget-object v0, Lcom/umeng/analytics/x;->a:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 1104
    goto :goto_1
.end method
