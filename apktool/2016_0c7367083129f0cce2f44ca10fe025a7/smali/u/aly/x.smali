.class public final Lu/aly/x;
.super Ljava/lang/Object;
.source "StatTracer.java"

# interfaces
.implements Lu/aly/p;


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field d:J

.field e:J

.field private final f:I

.field private g:I

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const v0, 0x36ee80

    iput v0, p0, Lu/aly/x;->f:I

    .line 26
    iput-wide v4, p0, Lu/aly/x;->d:J

    .line 27
    iput-wide v4, p0, Lu/aly/x;->e:J

    .line 1043
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lu/aly/x;->h:Landroid/content/Context;

    .line 2024
    const-string v0, "umeng_general_config"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1046
    const-string v1, "successful_request"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lu/aly/x;->a:I

    .line 1047
    const-string v1, "failed_requests "

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lu/aly/x;->b:I

    .line 1049
    const-string v1, "last_request_spent_ms"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lu/aly/x;->g:I

    .line 1050
    const-string v1, "last_request_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lu/aly/x;->c:J

    .line 1052
    const-string v1, "last_req"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/x;->d:J

    .line 40
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 126
    .line 5077
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/x;->d:J

    .line 127
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 131
    .line 5081
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lu/aly/x;->d:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lu/aly/x;->g:I

    .line 132
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 136
    .line 6067
    iget v0, p0, Lu/aly/x;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lu/aly/x;->a:I

    .line 6069
    iget-wide v0, p0, Lu/aly/x;->d:J

    iput-wide v0, p0, Lu/aly/x;->c:J

    .line 137
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 141
    .line 6073
    iget v0, p0, Lu/aly/x;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lu/aly/x;->b:I

    .line 142
    return-void
.end method

.method public final e()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    iget-wide v4, p0, Lu/aly/x;->c:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    move v0, v1

    .line 61
    :goto_0
    iget-object v3, p0, Lu/aly/x;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/aa;->a(Landroid/content/Context;)Lcom/umeng/analytics/aa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/aa;->f()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    .line 63
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 60
    goto :goto_0

    :cond_1
    move v3, v2

    .line 61
    goto :goto_1

    :cond_2
    move v1, v2

    .line 63
    goto :goto_2
.end method

.method public final f()V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lu/aly/x;->h:Landroid/content/Context;

    .line 3024
    const-string v1, "umeng_general_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "successful_request"

    iget v2, p0, Lu/aly/x;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "failed_requests "

    iget v2, p0, Lu/aly/x;->b:I

    .line 88
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_request_spent_ms"

    iget v2, p0, Lu/aly/x;->g:I

    .line 89
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_request_time"

    iget-wide v2, p0, Lu/aly/x;->c:J

    .line 90
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_req"

    iget-wide v2, p0, Lu/aly/x;->d:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    return-void
.end method

.method public final g()V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lu/aly/x;->h:Landroid/content/Context;

    .line 4024
    const-string v1, "umeng_general_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_activate_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    return-void
.end method

.method public final h()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    .line 101
    iget-wide v2, p0, Lu/aly/x;->e:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 102
    iget-object v1, p0, Lu/aly/x;->h:Landroid/content/Context;

    .line 5024
    const-string v2, "umeng_general_config"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 102
    const-string v2, "first_activate_time"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lu/aly/x;->e:J

    .line 105
    :cond_0
    iget-wide v2, p0, Lu/aly/x;->e:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
