.class public final Lcom/umeng/analytics/b;
.super Ljava/lang/Object;
.source "MobclickAgent.java"


# static fields
.field private static final a:Lcom/umeng/analytics/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/umeng/analytics/s;

    invoke-direct {v0}, Lcom/umeng/analytics/s;-><init>()V

    sput-object v0, Lcom/umeng/analytics/b;->a:Lcom/umeng/analytics/s;

    return-void
.end method

.method public static a()Lcom/umeng/analytics/s;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/umeng/analytics/b;->a:Lcom/umeng/analytics/s;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 203
    sget-object v0, Lcom/umeng/analytics/b;->a:Lcom/umeng/analytics/s;

    .line 1137
    if-nez p0, :cond_0

    .line 1138
    const-string v0, "unexpected null context in onPause"

    invoke-static {v0}, Lu/aly/ct;->d(Ljava/lang/String;)V

    .line 1158
    :goto_0
    return-void

    .line 1142
    :cond_0
    sget-boolean v1, Lcom/umeng/analytics/a;->e:Z

    if-eqz v1, :cond_1

    .line 1143
    iget-object v1, v0, Lcom/umeng/analytics/s;->a:Lu/aly/y;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lu/aly/y;->b(Ljava/lang/String;)V

    .line 1147
    :cond_1
    :try_start_0
    iget-boolean v1, v0, Lcom/umeng/analytics/s;->e:Z

    if-nez v1, :cond_2

    .line 1148
    invoke-virtual {v0, p0}, Lcom/umeng/analytics/s;->a(Landroid/content/Context;)V

    .line 1150
    :cond_2
    new-instance v1, Lcom/umeng/analytics/w;

    invoke-direct {v1, v0, p0}, Lcom/umeng/analytics/w;-><init>(Lcom/umeng/analytics/s;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/umeng/analytics/y;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1156
    :catch_0
    move-exception v0

    .line 1157
    const-string v1, "Exception occurred in Mobclick.onRause(). "

    invoke-static {v1, v0}, Lu/aly/ct;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 278
    sget-object v0, Lcom/umeng/analytics/b;->a:Lcom/umeng/analytics/s;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 279
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 171
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    sget-object v0, Lcom/umeng/analytics/b;->a:Lcom/umeng/analytics/s;

    .line 1080
    sget-boolean v1, Lcom/umeng/analytics/a;->e:Z

    if-nez v1, :cond_0

    .line 1082
    :try_start_0
    iget-object v0, v0, Lcom/umeng/analytics/s;->a:Lu/aly/y;

    invoke-virtual {v0, p0}, Lu/aly/y;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1085
    :cond_0
    :goto_0
    return-void

    .line 1084
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 174
    :cond_1
    const-string v0, "pageName is null or empty"

    invoke-static {v0}, Lu/aly/ct;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 215
    if-nez p0, :cond_0

    .line 216
    const-string v0, "unexpected null context in onResume"

    invoke-static {v0}, Lu/aly/ct;->d(Ljava/lang/String;)V

    .line 2133
    :goto_0
    return-void

    .line 220
    :cond_0
    sget-object v0, Lcom/umeng/analytics/b;->a:Lcom/umeng/analytics/s;

    .line 2113
    if-nez p0, :cond_1

    .line 2114
    const-string v0, "unexpected null context in onResume"

    invoke-static {v0}, Lu/aly/ct;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 2117
    :cond_1
    sget-boolean v1, Lcom/umeng/analytics/a;->e:Z

    if-eqz v1, :cond_2

    .line 2118
    iget-object v1, v0, Lcom/umeng/analytics/s;->a:Lu/aly/y;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lu/aly/y;->a(Ljava/lang/String;)V

    .line 2122
    :cond_2
    :try_start_0
    iget-boolean v1, v0, Lcom/umeng/analytics/s;->e:Z

    if-nez v1, :cond_3

    .line 2123
    invoke-virtual {v0, p0}, Lcom/umeng/analytics/s;->a(Landroid/content/Context;)V

    .line 2125
    :cond_3
    new-instance v1, Lcom/umeng/analytics/v;

    invoke-direct {v1, v0, p0}, Lcom/umeng/analytics/v;-><init>(Lcom/umeng/analytics/s;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/umeng/analytics/y;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2131
    :catch_0
    move-exception v0

    .line 2132
    const-string v1, "Exception occurred in Mobclick.onResume(). "

    invoke-static {v1, v0}, Lu/aly/ct;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 184
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    sget-object v0, Lcom/umeng/analytics/b;->a:Lcom/umeng/analytics/s;

    .line 1090
    sget-boolean v1, Lcom/umeng/analytics/a;->e:Z

    if-nez v1, :cond_0

    .line 1092
    :try_start_0
    iget-object v0, v0, Lcom/umeng/analytics/s;->a:Lu/aly/y;

    invoke-virtual {v0, p0}, Lu/aly/y;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    :cond_0
    :goto_0
    return-void

    .line 1094
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 187
    :cond_1
    const-string v0, "pageName is null or empty"

    invoke-static {v0}, Lu/aly/ct;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
