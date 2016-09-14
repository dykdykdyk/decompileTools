.class final Lcom/nut/blehunter/ui/bl;
.super Ljava/lang/Object;
.source "LocationRecordActivity.java"

# interfaces
.implements Lrx/b/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b/f",
        "<",
        "Ljava/lang/String;",
        "Lrx/h",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/nut/blehunter/entity/Position;",
        ">;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/nut/blehunter/ui/LocationRecordActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/LocationRecordActivity;II)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/nut/blehunter/ui/bl;->c:Lcom/nut/blehunter/ui/LocationRecordActivity;

    iput p2, p0, Lcom/nut/blehunter/ui/bl;->a:I

    iput p3, p0, Lcom/nut/blehunter/ui/bl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 145
    check-cast p1, Ljava/lang/String;

    .line 1148
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1149
    iget-object v0, p0, Lcom/nut/blehunter/ui/bl;->c:Lcom/nut/blehunter/ui/LocationRecordActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/LocationRecordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/bl;->c:Lcom/nut/blehunter/ui/LocationRecordActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/LocationRecordActivity;->c(Lcom/nut/blehunter/ui/LocationRecordActivity;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/nut/blehunter/ui/bl;->a:I

    .line 1218
    const-string v3, "sync_time"

    invoke-static {v0, v3}, Lcom/nut/blehunter/d/l;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1219
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sync_date_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1220
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1150
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1151
    if-eqz v0, :cond_7

    .line 1152
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2102
    const/4 v0, 0x0

    move-object v3, v0

    .line 1154
    :goto_0
    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1155
    new-instance v0, Ljava/sql/Date;

    iget v1, p0, Lcom/nut/blehunter/ui/bl;->b:I

    int-to-long v4, v1

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v0, v4, v5}, Ljava/sql/Date;-><init>(J)V

    invoke-static {v0}, Lorg/threeten/bp/c;->a(Ljava/sql/Date;)Lorg/threeten/bp/j;

    move-result-object v0

    .line 1156
    new-instance v1, Ljava/sql/Date;

    iget v2, p0, Lcom/nut/blehunter/ui/bl;->a:I

    int-to-long v4, v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v1, v4, v5}, Ljava/sql/Date;-><init>(J)V

    invoke-static {v1}, Lorg/threeten/bp/c;->a(Ljava/sql/Date;)Lorg/threeten/bp/j;

    move-result-object v4

    .line 1157
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 1159
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Position;

    .line 1160
    new-instance v1, Ljava/sql/Date;

    iget-wide v8, v0, Lcom/nut/blehunter/entity/Position;->f:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-direct {v1, v8, v9}, Ljava/sql/Date;-><init>(J)V

    invoke-static {v1}, Lorg/threeten/bp/c;->a(Ljava/sql/Date;)Lorg/threeten/bp/j;

    move-result-object v7

    .line 1161
    iget-wide v8, v0, Lcom/nut/blehunter/entity/Position;->g:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-gtz v1, :cond_4

    const/4 v1, 0x0

    .line 1165
    :goto_3
    if-nez v1, :cond_1

    invoke-virtual {v2, v7}, Lorg/threeten/bp/j;->d(Lorg/threeten/bp/a/a;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v2, v7}, Lorg/threeten/bp/j;->d(Lorg/threeten/bp/a/a;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v2, v1}, Lorg/threeten/bp/j;->d(Lorg/threeten/bp/a/a;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v2, v7}, Lorg/threeten/bp/j;->b(Lorg/threeten/bp/a/a;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2, v1}, Lorg/threeten/bp/j;->c(Lorg/threeten/bp/a/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1167
    :cond_2
    invoke-virtual {v2}, Lorg/threeten/bp/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1168
    invoke-virtual {v2}, Lorg/threeten/bp/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2104
    :cond_3
    new-instance v1, Lcom/nut/blehunter/l;

    invoke-direct {v1}, Lcom/nut/blehunter/l;-><init>()V

    invoke-virtual {v1}, Lcom/nut/blehunter/l;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 2105
    invoke-static {v0, v1}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v3, v0

    goto/16 :goto_0

    .line 1161
    :cond_4
    new-instance v1, Ljava/sql/Date;

    iget-wide v8, v0, Lcom/nut/blehunter/entity/Position;->g:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-direct {v1, v8, v9}, Ljava/sql/Date;-><init>(J)V

    invoke-static {v1}, Lorg/threeten/bp/c;->a(Ljava/sql/Date;)Lorg/threeten/bp/j;

    move-result-object v1

    goto :goto_3

    .line 1170
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1172
    invoke-virtual {v2}, Lorg/threeten/bp/j;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1176
    :cond_6
    const-wide/16 v0, 0x1

    invoke-virtual {v2, v0, v1}, Lorg/threeten/bp/j;->e(J)Lorg/threeten/bp/j;

    move-result-object v0

    .line 1178
    invoke-virtual {v0, v4}, Lorg/threeten/bp/j;->c(Lorg/threeten/bp/a/a;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0, v4}, Lorg/threeten/bp/j;->d(Lorg/threeten/bp/a/a;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1180
    iget-object v0, p0, Lcom/nut/blehunter/ui/bl;->c:Lcom/nut/blehunter/ui/LocationRecordActivity;

    iget v1, p0, Lcom/nut/blehunter/ui/bl;->a:I

    invoke-static {v0, v1, v5}, Lcom/nut/blehunter/ui/LocationRecordActivity;->a(Lcom/nut/blehunter/ui/LocationRecordActivity;ILjava/util/HashMap;)Lrx/h;

    move-result-object v0

    :goto_4
    return-object v0

    .line 1184
    :cond_7
    iget-object v0, p0, Lcom/nut/blehunter/ui/bl;->c:Lcom/nut/blehunter/ui/LocationRecordActivity;

    iget v1, p0, Lcom/nut/blehunter/ui/bl;->a:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/ui/LocationRecordActivity;->a(Lcom/nut/blehunter/ui/LocationRecordActivity;ILjava/util/HashMap;)Lrx/h;

    move-result-object v0

    goto :goto_4

    :cond_8
    move-object v2, v0

    goto/16 :goto_1
.end method
