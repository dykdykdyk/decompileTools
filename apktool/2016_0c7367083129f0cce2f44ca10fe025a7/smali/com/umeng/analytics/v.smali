.class final Lcom/umeng/analytics/v;
.super Lcom/umeng/analytics/z;
.source "InternalAgent.java"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/umeng/analytics/s;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/s;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/umeng/analytics/v;->b:Lcom/umeng/analytics/s;

    iput-object p2, p0, Lcom/umeng/analytics/v;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/umeng/analytics/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 127
    iget-object v0, p0, Lcom/umeng/analytics/v;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2138
    sput-object v0, Lu/aly/w;->a:Landroid/content/Context;

    .line 3024
    const-string v1, "umeng_general_config"

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2140
    if-eqz v1, :cond_3

    .line 2144
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2146
    const-string v3, "versioncode"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2147
    sget-object v4, Lu/aly/w;->a:Landroid/content/Context;

    invoke-static {v4}, Lu/aly/cr;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2148
    if-eqz v3, :cond_4

    if-eq v4, v3, :cond_4

    .line 2149
    invoke-static {v0}, Lu/aly/w;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2150
    invoke-static {v0, v1}, Lu/aly/w;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    .line 2152
    :cond_0
    sget-object v0, Lu/aly/w;->a:Landroid/content/Context;

    .line 4024
    const-string v1, "umeng_general_config"

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3241
    if-eqz v1, :cond_2

    .line 3245
    const-string v2, "session_id"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3246
    if-eqz v2, :cond_2

    .line 3250
    const-string v2, "a_start_time"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3251
    const-string v4, "a_end_time"

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3253
    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 3255
    invoke-static {v0}, Lu/aly/w;->c(Landroid/content/Context;)V

    .line 3259
    :cond_1
    invoke-static {v0}, Lu/aly/h;->a(Landroid/content/Context;)Lu/aly/h;

    move-result-object v1

    .line 3260
    invoke-static {v0}, Lu/aly/w;->a(Landroid/content/Context;)Lu/aly/an;

    move-result-object v0

    .line 3261
    if-eqz v0, :cond_2

    .line 3262
    invoke-virtual {v1, v0}, Lu/aly/h;->b(Lu/aly/o;)V

    .line 2153
    :cond_2
    sget-object v0, Lu/aly/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/h;->a(Landroid/content/Context;)Lu/aly/h;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/h;->b()V

    .line 2154
    sget-object v0, Lu/aly/w;->a:Landroid/content/Context;

    .line 5024
    const-string v1, "umeng_general_config"

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4270
    if-eqz v1, :cond_3

    .line 4274
    invoke-static {v0}, Lu/aly/w;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 4276
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 4278
    const-string v3, "session_id"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4279
    const-string v3, "session_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 4280
    const-string v3, "session_end_time"

    invoke-interface {v1, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 4281
    const-string v3, "a_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 4282
    const-string v3, "a_end_time"

    invoke-interface {v1, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 4283
    const-string v3, "versioncode"

    invoke-static {v0}, Lu/aly/cr;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4284
    const-string v3, "versionname"

    invoke-static {v0}, Lu/aly/cr;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4286
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Restart session: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/ct;->b(Ljava/lang/String;)V

    .line 2160
    :cond_3
    :goto_0
    return-void

    .line 2158
    :cond_4
    invoke-static {v1}, Lu/aly/w;->a(Landroid/content/SharedPreferences;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2159
    invoke-static {v0, v1}, Lu/aly/w;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 2160
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start new session: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/ct;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 2162
    :cond_5
    const-string v0, "session_id"

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2163
    const-string v1, "a_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2164
    const-string v1, "a_end_time"

    invoke-interface {v2, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2165
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2166
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Extend current session: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/ct;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
