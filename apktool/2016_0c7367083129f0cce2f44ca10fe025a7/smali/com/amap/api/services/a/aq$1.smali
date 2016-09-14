.class Lcom/amap/api/services/a/aq$1;
.super Ljava/lang/Object;
.source "WeatherSearchCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/aq;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/aq;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0x516

    const/16 v5, 0x515

    .line 72
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/q;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 73
    const/16 v0, 0xd

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 74
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 75
    iget-object v0, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v0}, Lcom/amap/api/services/a/aq;->a(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/WeatherSearchQuery;

    move-result-object v0

    if-nez v0, :cond_1

    .line 77
    :try_start_0
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :catch_0
    move-exception v0

    const-string v1, "WeatherSearch"

    const-string v2, "searchWeatherAsyn"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v0}, Lcom/amap/api/services/a/aq;->a(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/WeatherSearchQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/weather/WeatherSearchQuery;->getType()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 83
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    iget-object v3, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v3}, Lcom/amap/api/services/a/aq;->b(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amap/api/services/a/aq;->a(Lcom/amap/api/services/a/aq;Lcom/amap/api/services/weather/LocalWeatherLiveResult;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    .line 84
    const-string v0, "errorCode"

    const/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    new-instance v0, Lcom/amap/api/services/a/q$k;

    invoke-direct {v0}, Lcom/amap/api/services/a/q$k;-><init>()V

    .line 93
    iput v5, v1, Landroid/os/Message;->what:I

    .line 94
    iget-object v3, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v3}, Lcom/amap/api/services/a/aq;->c(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/services/a/q$k;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    .line 95
    iget-object v3, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v3}, Lcom/amap/api/services/a/aq;->d(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/services/a/q$k;->a:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    .line 96
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 97
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 98
    iget-object v0, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v0}, Lcom/amap/api/services/a/aq;->e(Lcom/amap/api/services/a/aq;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 85
    :catch_1
    move-exception v0

    .line 86
    :try_start_2
    const-string v3, "errorCode"

    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    const-string v3, "WeatherSearch"

    const-string v4, "searchWeatherAsyn"

    invoke-static {v0, v3, v4}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    new-instance v0, Lcom/amap/api/services/a/q$k;

    invoke-direct {v0}, Lcom/amap/api/services/a/q$k;-><init>()V

    .line 93
    iput v5, v1, Landroid/os/Message;->what:I

    .line 94
    iget-object v3, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v3}, Lcom/amap/api/services/a/aq;->c(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/services/a/q$k;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    .line 95
    iget-object v3, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v3}, Lcom/amap/api/services/a/aq;->d(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/services/a/q$k;->a:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    .line 96
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 97
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 98
    iget-object v0, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v0}, Lcom/amap/api/services/a/aq;->e(Lcom/amap/api/services/a/aq;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 89
    :catch_2
    move-exception v0

    :try_start_3
    const-string v3, "WeatherSearch"

    const-string v4, "searchWeatherAnsyThrowable"

    invoke-static {v0, v3, v4}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    new-instance v0, Lcom/amap/api/services/a/q$k;

    invoke-direct {v0}, Lcom/amap/api/services/a/q$k;-><init>()V

    .line 93
    iput v5, v1, Landroid/os/Message;->what:I

    .line 94
    iget-object v3, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v3}, Lcom/amap/api/services/a/aq;->c(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/services/a/q$k;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    .line 95
    iget-object v3, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v3}, Lcom/amap/api/services/a/aq;->d(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/services/a/q$k;->a:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    .line 96
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 97
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 98
    iget-object v0, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v0}, Lcom/amap/api/services/a/aq;->e(Lcom/amap/api/services/a/aq;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 92
    :catchall_0
    move-exception v0

    new-instance v3, Lcom/amap/api/services/a/q$k;

    invoke-direct {v3}, Lcom/amap/api/services/a/q$k;-><init>()V

    .line 93
    iput v5, v1, Landroid/os/Message;->what:I

    .line 94
    iget-object v4, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v4}, Lcom/amap/api/services/a/aq;->c(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v4

    iput-object v4, v3, Lcom/amap/api/services/a/q$k;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    .line 95
    iget-object v4, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v4}, Lcom/amap/api/services/a/aq;->d(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    move-result-object v4

    iput-object v4, v3, Lcom/amap/api/services/a/q$k;->a:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    .line 96
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 97
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 98
    iget-object v2, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v2}, Lcom/amap/api/services/a/aq;->e(Lcom/amap/api/services/a/aq;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 99
    throw v0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v0}, Lcom/amap/api/services/a/aq;->a(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/WeatherSearchQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/weather/WeatherSearchQuery;->getType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 102
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    iget-object v3, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v3}, Lcom/amap/api/services/a/aq;->f(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amap/api/services/a/aq;->a(Lcom/amap/api/services/a/aq;Lcom/amap/api/services/weather/LocalWeatherForecastResult;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    .line 103
    const-string v0, "errorCode"

    const/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_4
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 111
    new-instance v0, Lcom/amap/api/services/a/q$j;

    invoke-direct {v0}, Lcom/amap/api/services/a/q$j;-><init>()V

    .line 112
    iput v6, v1, Landroid/os/Message;->what:I

    .line 113
    iget-object v3, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v3}, Lcom/amap/api/services/a/aq;->c(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/services/a/q$j;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    .line 114
    iget-object v3, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v3}, Lcom/amap/api/services/a/aq;->g(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/services/a/q$j;->a:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    .line 115
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 116
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 117
    iget-object v0, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v0}, Lcom/amap/api/services/a/aq;->e(Lcom/amap/api/services/a/aq;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 104
    :catch_3
    move-exception v0

    .line 105
    :try_start_5
    const-string v3, "errorCode"

    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    const-string v3, "WeatherSearch"

    const-string v4, "searchWeatherAsyn"

    invoke-static {v0, v3, v4}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 111
    new-instance v0, Lcom/amap/api/services/a/q$j;

    invoke-direct {v0}, Lcom/amap/api/services/a/q$j;-><init>()V

    .line 112
    iput v6, v1, Landroid/os/Message;->what:I

    .line 113
    iget-object v3, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v3}, Lcom/amap/api/services/a/aq;->c(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/services/a/q$j;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    .line 114
    iget-object v3, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v3}, Lcom/amap/api/services/a/aq;->g(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/services/a/q$j;->a:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    .line 115
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 116
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 117
    iget-object v0, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v0}, Lcom/amap/api/services/a/aq;->e(Lcom/amap/api/services/a/aq;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 108
    :catch_4
    move-exception v0

    :try_start_6
    const-string v3, "WeatherSearch"

    const-string v4, "searchWeatherAnsyThrowable"

    invoke-static {v0, v3, v4}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 111
    new-instance v0, Lcom/amap/api/services/a/q$j;

    invoke-direct {v0}, Lcom/amap/api/services/a/q$j;-><init>()V

    .line 112
    iput v6, v1, Landroid/os/Message;->what:I

    .line 113
    iget-object v3, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v3}, Lcom/amap/api/services/a/aq;->c(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/services/a/q$j;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    .line 114
    iget-object v3, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v3}, Lcom/amap/api/services/a/aq;->g(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/services/a/q$j;->a:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    .line 115
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 116
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 117
    iget-object v0, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v0}, Lcom/amap/api/services/a/aq;->e(Lcom/amap/api/services/a/aq;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 111
    :catchall_1
    move-exception v0

    new-instance v3, Lcom/amap/api/services/a/q$j;

    invoke-direct {v3}, Lcom/amap/api/services/a/q$j;-><init>()V

    .line 112
    iput v6, v1, Landroid/os/Message;->what:I

    .line 113
    iget-object v4, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v4}, Lcom/amap/api/services/a/aq;->c(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    move-result-object v4

    iput-object v4, v3, Lcom/amap/api/services/a/q$j;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    .line 114
    iget-object v4, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v4}, Lcom/amap/api/services/a/aq;->g(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    move-result-object v4

    iput-object v4, v3, Lcom/amap/api/services/a/q$j;->a:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    .line 115
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 116
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 117
    iget-object v2, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v2}, Lcom/amap/api/services/a/aq;->e(Lcom/amap/api/services/a/aq;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    throw v0
.end method
