.class public final Lu/aly/es;
.super Lcom/umeng/analytics/z;
.source "UMCCAggregatedManager.java"


# instance fields
.field final synthetic a:Lu/aly/ef;

.field final synthetic b:Lu/aly/ej;


# direct methods
.method public constructor <init>(Lu/aly/ej;Lu/aly/ef;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lu/aly/es;->b:Lu/aly/ej;

    iput-object p2, p0, Lu/aly/es;->a:Lu/aly/ef;

    invoke-direct {p0}, Lcom/umeng/analytics/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    .line 157
    :try_start_0
    new-instance v0, Lu/aly/et;

    invoke-direct {v0, p0}, Lu/aly/et;-><init>(Lu/aly/es;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    :try_start_1
    sget-object v1, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/as;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1059
    invoke-static {v1}, Lu/aly/a;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v2

    .line 1060
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2038
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 2039
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2041
    const/16 v6, 0xb

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0xa

    const/16 v7, 0xc

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x6

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v6

    .line 2042
    invoke-static {v4, v5}, Lu/aly/fb;->a(J)J

    move-result-wide v4

    .line 2044
    const-wide/16 v6, 0xf0

    mul-long/2addr v4, v6

    add-int/lit8 v3, v3, -0x1

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 1061
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1062
    const-string v1, "faild"

    invoke-virtual {v0, v1}, Lu/aly/ef;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1074
    :try_start_2
    sget-object v0, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/as;->c()V

    .line 174
    :goto_0
    iget-object v0, p0, Lu/aly/es;->b:Lu/aly/ej;

    .line 3038
    invoke-virtual {v0}, Lu/aly/ej;->a()V

    .line 175
    iget-object v0, p0, Lu/aly/es;->b:Lu/aly/ej;

    .line 4507
    invoke-static {}, Lu/aly/ey;->b()Ljava/util/List;

    move-result-object v1

    .line 4508
    if-eqz v1, :cond_0

    .line 4509
    iput-object v1, v0, Lu/aly/ej;->g:Ljava/util/List;

    .line 176
    :cond_0
    iget-object v0, p0, Lu/aly/es;->a:Lu/aly/ef;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lu/aly/ef;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 180
    :goto_1
    return-void

    .line 1065
    :cond_1
    :try_start_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1066
    invoke-static {v1, v0}, Lu/aly/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lu/aly/ef;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1074
    :goto_2
    :try_start_4
    sget-object v0, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/as;->c()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1068
    :cond_2
    :try_start_5
    invoke-static {v1, v0}, Lu/aly/a;->b(Landroid/database/sqlite/SQLiteDatabase;Lu/aly/ef;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 1071
    :catch_1
    move-exception v1

    const/4 v1, 0x0

    :try_start_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/ef;->a(Ljava/lang/Object;)V

    .line 1072
    const-string v0, "load agg data error"

    invoke-static {v0}, Lu/aly/ct;->d(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1074
    :try_start_7
    sget-object v0, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/as;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lu/aly/ey;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/as;->a(Landroid/content/Context;)Lu/aly/as;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/as;->c()V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
.end method
