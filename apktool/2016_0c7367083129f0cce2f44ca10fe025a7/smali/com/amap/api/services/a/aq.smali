.class public Lcom/amap/api/services/a/aq;
.super Ljava/lang/Object;
.source "WeatherSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/IWeatherSearch;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/services/weather/WeatherSearchQuery;

.field private c:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

.field private d:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

.field private e:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/aq;->f:Landroid/os/Handler;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/aq;->a:Landroid/content/Context;

    .line 43
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/aq;->f:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/aq;Lcom/amap/api/services/weather/LocalWeatherForecastResult;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/amap/api/services/a/aq;->e:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    return-object p1
.end method

.method private a()Lcom/amap/api/services/weather/LocalWeatherLiveResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/amap/api/services/a/aq;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 128
    iget-object v0, p0, Lcom/amap/api/services/a/aq;->b:Lcom/amap/api/services/weather/WeatherSearchQuery;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    new-instance v1, Lcom/amap/api/services/a/ae;

    iget-object v0, p0, Lcom/amap/api/services/a/aq;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/aq;->b:Lcom/amap/api/services/weather/WeatherSearchQuery;

    invoke-direct {v1, v0, v2}, Lcom/amap/api/services/a/ae;-><init>(Landroid/content/Context;Lcom/amap/api/services/weather/WeatherSearchQuery;)V

    .line 132
    invoke-virtual {v1}, Lcom/amap/api/services/a/ae;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/weather/WeatherSearchQuery;

    .line 133
    invoke-virtual {v1}, Lcom/amap/api/services/a/ae;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/weather/LocalWeatherLive;

    .line 132
    invoke-static {v0, v1}, Lcom/amap/api/services/weather/LocalWeatherLiveResult;->createPagedResult(Lcom/amap/api/services/weather/WeatherSearchQuery;Lcom/amap/api/services/weather/LocalWeatherLive;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/services/a/aq;Lcom/amap/api/services/weather/LocalWeatherLiveResult;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/amap/api/services/a/aq;->d:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/WeatherSearchQuery;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amap/api/services/a/aq;->b:Lcom/amap/api/services/weather/WeatherSearchQuery;

    return-object v0
.end method

.method private b()Lcom/amap/api/services/weather/LocalWeatherForecastResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/amap/api/services/a/aq;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 141
    iget-object v0, p0, Lcom/amap/api/services/a/aq;->b:Lcom/amap/api/services/weather/WeatherSearchQuery;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    new-instance v1, Lcom/amap/api/services/a/ad;

    iget-object v0, p0, Lcom/amap/api/services/a/aq;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/aq;->b:Lcom/amap/api/services/weather/WeatherSearchQuery;

    invoke-direct {v1, v0, v2}, Lcom/amap/api/services/a/ad;-><init>(Landroid/content/Context;Lcom/amap/api/services/weather/WeatherSearchQuery;)V

    .line 145
    invoke-virtual {v1}, Lcom/amap/api/services/a/ad;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/weather/WeatherSearchQuery;

    .line 146
    invoke-virtual {v1}, Lcom/amap/api/services/a/ad;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/weather/LocalWeatherForecast;

    .line 145
    invoke-static {v0, v1}, Lcom/amap/api/services/weather/LocalWeatherForecastResult;->createPagedResult(Lcom/amap/api/services/weather/WeatherSearchQuery;Lcom/amap/api/services/weather/LocalWeatherForecast;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/amap/api/services/a/aq;->a()Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amap/api/services/a/aq;->c:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/LocalWeatherLiveResult;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amap/api/services/a/aq;->d:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/services/a/aq;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amap/api/services/a/aq;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/amap/api/services/a/aq;->b()Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/weather/LocalWeatherForecastResult;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amap/api/services/a/aq;->e:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    return-object v0
.end method


# virtual methods
.method public getQuery()Lcom/amap/api/services/weather/WeatherSearchQuery;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amap/api/services/a/aq;->b:Lcom/amap/api/services/weather/WeatherSearchQuery;

    return-object v0
.end method

.method public searchWeatherAsyn()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amap/api/services/a/aq$1;

    invoke-direct {v1, p0}, Lcom/amap/api/services/a/aq$1;-><init>(Lcom/amap/api/services/a/aq;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 121
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 122
    return-void
.end method

.method public setOnWeatherSearchListener(Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/amap/api/services/a/aq;->c:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    .line 156
    return-void
.end method

.method public setQuery(Lcom/amap/api/services/weather/WeatherSearchQuery;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/amap/api/services/a/aq;->b:Lcom/amap/api/services/weather/WeatherSearchQuery;

    .line 62
    return-void
.end method
