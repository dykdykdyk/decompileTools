.class final Lcom/sina/weibo/sdk/b/k;
.super Ljava/lang/Object;
.source "WbAppActivator.java"


# direct methods
.method public static a(Landroid/content/SharedPreferences;J)V
    .locals 3

    .prologue
    .line 182
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 183
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 184
    const-string v1, "frequency_get_cmd"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 185
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 187
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/SharedPreferences;J)V
    .locals 3

    .prologue
    .line 207
    if-eqz p0, :cond_0

    .line 208
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 209
    const-string v1, "last_time_get_cmd"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 210
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 212
    :cond_0
    return-void
.end method
