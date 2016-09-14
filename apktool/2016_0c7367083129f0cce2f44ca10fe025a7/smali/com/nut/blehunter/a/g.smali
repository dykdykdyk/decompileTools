.class final Lcom/nut/blehunter/a/g;
.super Landroid/os/Handler;
.source "UbRecord.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/a/f;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/a/f;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/nut/blehunter/a/g;->a:Lcom/nut/blehunter/a/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 127
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 130
    :pswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/a/g;->a:Lcom/nut/blehunter/a/f;

    iget-object v0, v0, Lcom/nut/blehunter/a/f;->a:Lcom/nut/blehunter/a/c;

    .line 1041
    iget-object v0, v0, Lcom/nut/blehunter/a/c;->b:Lcom/nut/blehunter/a/d;

    .line 130
    check-cast v0, Landroid/app/Application;

    .line 1086
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/log"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1088
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 1091
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "behavious.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1092
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 130
    if-nez v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/nut/blehunter/a/g;->a:Lcom/nut/blehunter/a/f;

    iget-object v0, v0, Lcom/nut/blehunter/a/f;->a:Lcom/nut/blehunter/a/c;

    invoke-static {v0}, Lcom/nut/blehunter/a/c;->a(Lcom/nut/blehunter/a/c;)V

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/a/g;->a:Lcom/nut/blehunter/a/f;

    iget-object v3, v0, Lcom/nut/blehunter/a/f;->a:Lcom/nut/blehunter/a/c;

    .line 2264
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2265
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2266
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 2294
    iget-object v0, v3, Lcom/nut/blehunter/a/c;->b:Lcom/nut/blehunter/a/d;

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2296
    const-string v5, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v0, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 3280
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3281
    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3282
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2271
    if-eq v0, v4, :cond_7

    .line 2272
    invoke-virtual {v3, v6, v7}, Lcom/nut/blehunter/a/c;->a(J)V

    move v0, v2

    .line 134
    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nut/blehunter/a/g;->a:Lcom/nut/blehunter/a/f;

    iget-object v0, v0, Lcom/nut/blehunter/a/f;->a:Lcom/nut/blehunter/a/c;

    .line 4041
    iget-object v0, v0, Lcom/nut/blehunter/a/c;->b:Lcom/nut/blehunter/a/d;

    .line 134
    check-cast v0, Landroid/app/Application;

    .line 4099
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/log"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "behavious.txt"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4101
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4102
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4103
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x7800

    cmp-long v0, v4, v6

    if-gez v0, :cond_8

    move v0, v1

    .line 134
    :goto_2
    if-eqz v0, :cond_4

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/nut/blehunter/a/g;->a:Lcom/nut/blehunter/a/f;

    iget-object v0, v0, Lcom/nut/blehunter/a/f;->a:Lcom/nut/blehunter/a/c;

    invoke-static {v0}, Lcom/nut/blehunter/a/c;->b(Lcom/nut/blehunter/a/c;)V

    .line 137
    iget-object v0, p0, Lcom/nut/blehunter/a/g;->a:Lcom/nut/blehunter/a/f;

    iget-object v0, v0, Lcom/nut/blehunter/a/f;->a:Lcom/nut/blehunter/a/c;

    invoke-static {v0}, Lcom/nut/blehunter/a/c;->a(Lcom/nut/blehunter/a/c;)V

    .line 139
    :cond_4
    iget-object v0, p0, Lcom/nut/blehunter/a/g;->a:Lcom/nut/blehunter/a/f;

    iget-object v0, v0, Lcom/nut/blehunter/a/f;->a:Lcom/nut/blehunter/a/c;

    .line 5189
    invoke-static {p1}, Lcom/nut/blehunter/a/c;->a(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    .line 5190
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5194
    const-string v2, "Launch"

    invoke-static {v2, p1}, Lcom/nut/blehunter/a/c;->a(Ljava/lang/String;Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/nut/blehunter/a/c;->c:J

    .line 5198
    :cond_5
    const-string v2, "Terminate"

    invoke-static {v2, p1}, Lcom/nut/blehunter/a/c;->a(Ljava/lang/String;Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/nut/blehunter/a/c;->c:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/nut/blehunter/a/c;->c:J

    .line 5203
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5204
    iget-object v0, v0, Lcom/nut/blehunter/a/c;->b:Lcom/nut/blehunter/a/d;

    check-cast v0, Landroid/app/Application;

    invoke-static {v0, v1}, Lcom/nut/blehunter/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 2275
    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 4105
    goto :goto_2

    .line 144
    :pswitch_1
    iget-object v0, p0, Lcom/nut/blehunter/a/g;->a:Lcom/nut/blehunter/a/f;

    iget-object v0, v0, Lcom/nut/blehunter/a/f;->a:Lcom/nut/blehunter/a/c;

    invoke-static {v0}, Lcom/nut/blehunter/a/c;->c(Lcom/nut/blehunter/a/c;)V

    goto/16 :goto_0

    .line 149
    :pswitch_2
    iget-object v0, p0, Lcom/nut/blehunter/a/g;->a:Lcom/nut/blehunter/a/f;

    iget-object v0, v0, Lcom/nut/blehunter/a/f;->a:Lcom/nut/blehunter/a/c;

    invoke-static {v0}, Lcom/nut/blehunter/a/c;->b(Lcom/nut/blehunter/a/c;)V

    goto/16 :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
