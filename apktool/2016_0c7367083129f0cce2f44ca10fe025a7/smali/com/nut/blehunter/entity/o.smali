.class public final Lcom/nut/blehunter/entity/o;
.super Ljava/lang/Object;
.source "MyUserManager.java"


# static fields
.field private static a:Lcom/nut/blehunter/entity/o;


# instance fields
.field private volatile b:Lcom/nut/blehunter/entity/User;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static declared-synchronized a()Lcom/nut/blehunter/entity/o;
    .locals 2

    .prologue
    .line 29
    const-class v1, Lcom/nut/blehunter/entity/o;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nut/blehunter/entity/o;->a:Lcom/nut/blehunter/entity/o;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/nut/blehunter/entity/o;

    invoke-direct {v0}, Lcom/nut/blehunter/entity/o;-><init>()V

    sput-object v0, Lcom/nut/blehunter/entity/o;->a:Lcom/nut/blehunter/entity/o;

    .line 32
    :cond_0
    sget-object v0, Lcom/nut/blehunter/entity/o;->a:Lcom/nut/blehunter/entity/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1140
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1141
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1142
    invoke-static {v1}, Lcom/nut/blehunter/entity/o;->b(I)I

    move-result v1

    .line 133
    shr-int v1, p0, v1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    .line 136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(I)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 146
    .line 147
    packed-switch p0, :pswitch_data_0

    .line 170
    :goto_0
    :pswitch_0
    return v0

    .line 149
    :pswitch_1
    const/4 v0, 0x6

    .line 150
    goto :goto_0

    .line 155
    :pswitch_2
    const/4 v0, 0x1

    .line 156
    goto :goto_0

    .line 158
    :pswitch_3
    const/4 v0, 0x2

    .line 159
    goto :goto_0

    .line 161
    :pswitch_4
    const/4 v0, 0x3

    .line 162
    goto :goto_0

    .line 164
    :pswitch_5
    const/4 v0, 0x4

    .line 165
    goto :goto_0

    .line 167
    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Lcom/nut/blehunter/entity/User;)V
    .locals 2

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/nut/blehunter/d/c;->a()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p2, Lcom/nut/blehunter/entity/User;->k:I

    .line 58
    invoke-virtual {p0, p2}, Lcom/nut/blehunter/entity/o;->a(Lcom/nut/blehunter/entity/User;)V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    const-string v1, "com.nutspace.action.execute.user.api"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_0
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 175
    monitor-enter p0

    if-nez p1, :cond_0

    .line 183
    :goto_0
    monitor-exit p0

    return-void

    .line 178
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "foreign_user_status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 181
    const-string v1, "foreign_user"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 182
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/nut/blehunter/entity/User;)V
    .locals 3

    .prologue
    const/16 v2, 0x1e

    .line 43
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/nut/blehunter/entity/User;->m:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/nut/blehunter/entity/User;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 44
    :cond_0
    const/4 v0, 0x3

    iput v0, p1, Lcom/nut/blehunter/entity/User;->m:I

    .line 46
    :cond_1
    iget v0, p1, Lcom/nut/blehunter/entity/User;->m:I

    if-le v0, v2, :cond_2

    .line 47
    const/16 v0, 0x1e

    iput v0, p1, Lcom/nut/blehunter/entity/User;->m:I

    .line 49
    :cond_2
    invoke-virtual {p1}, Lcom/nut/blehunter/entity/User;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 50
    invoke-virtual {p1}, Lcom/nut/blehunter/entity/User;->d()V

    .line 52
    :cond_3
    iput-object p1, p0, Lcom/nut/blehunter/entity/o;->b:Lcom/nut/blehunter/entity/User;

    .line 53
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nut/blehunter/provider/o;->a(Lcom/nut/blehunter/entity/User;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 68
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const v1, 0x7f060257

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized b()Lcom/nut/blehunter/entity/User;
    .locals 1

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nut/blehunter/entity/o;->b:Lcom/nut/blehunter/entity/User;

    if-nez v0, :cond_0

    .line 37
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/o;->b:Lcom/nut/blehunter/entity/User;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/entity/o;->b:Lcom/nut/blehunter/entity/User;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "foreign_user_status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 189
    const-string v1, "foreign_user"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/entity/o;->b:Lcom/nut/blehunter/entity/User;

    .line 81
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/o;->d()V

    .line 82
    return-void
.end method

.method public final e()Z
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 86
    if-nez v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v3

    .line 89
    :cond_1
    iget-object v1, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iget v1, v1, Lcom/nut/blehunter/entity/aa;->a:I

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iget-object v1, v1, Lcom/nut/blehunter/entity/aa;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iget-object v0, v0, Lcom/nut/blehunter/entity/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/nut/blehunter/entity/o;->b:Lcom/nut/blehunter/entity/User;

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    iget-object v0, v0, Lcom/nut/blehunter/entity/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Silence;

    .line 94
    iget-object v1, v0, Lcom/nut/blehunter/entity/Silence;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 97
    iget-object v1, v0, Lcom/nut/blehunter/entity/Silence;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nut/blehunter/entity/RepeatTime;

    .line 98
    if-eqz v1, :cond_2

    iget v1, v1, Lcom/nut/blehunter/entity/RepeatTime;->b:I

    iget v5, v0, Lcom/nut/blehunter/entity/Silence;->b:I

    iget v0, v0, Lcom/nut/blehunter/entity/Silence;->c:I

    .line 1107
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1108
    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1109
    const/16 v8, 0xc

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 1110
    const/16 v9, 0xd

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 1111
    mul-int/lit16 v7, v7, 0xe10

    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr v7, v8

    add-int/2addr v7, v9

    .line 1112
    if-ltz v7, :cond_3

    if-ltz v5, :cond_3

    if-gez v0, :cond_4

    :cond_3
    move v0, v3

    .line 98
    :goto_1
    if-eqz v0, :cond_2

    move v3, v2

    .line 100
    goto :goto_0

    .line 1116
    :cond_4
    if-ge v0, v5, :cond_7

    .line 1117
    if-lt v7, v5, :cond_5

    .line 1118
    invoke-static {v1}, Lcom/nut/blehunter/entity/o;->a(I)Z

    move-result v0

    goto :goto_1

    .line 1119
    :cond_5
    if-gt v7, v0, :cond_9

    .line 1120
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 1121
    const-wide/32 v10, 0x5265c00

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1122
    const/4 v0, 0x7

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/nut/blehunter/entity/o;->b(I)I

    move-result v0

    .line 1123
    shr-int v0, v1, v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_6

    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_1

    .line 1126
    :cond_7
    invoke-static {v1}, Lcom/nut/blehunter/entity/o;->a(I)Z

    move-result v1

    if-eqz v1, :cond_8

    if-le v7, v5, :cond_8

    if-ge v7, v0, :cond_8

    move v0, v2

    goto :goto_1

    :cond_8
    move v0, v3

    goto :goto_1

    :cond_9
    move v0, v3

    goto :goto_1
.end method
