.class public Lcom/amap/api/services/weather/WeatherSearch;
.super Ljava/lang/Object;
.source "WeatherSearch.java"


# instance fields
.field private a:Lcom/amap/api/services/interfaces/IWeatherSearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/weather/WeatherSearch;->a:Lcom/amap/api/services/interfaces/IWeatherSearch;

    .line 25
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/ba;

    move-result-object v1

    const-string v2, "com.amap.api.services.dynamic.WeatherSearchWrapper"

    const-class v3, Lcom/amap/api/services/a/aq;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/services/a/cb;->a(Landroid/content/Context;Lcom/amap/api/services/a/ba;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/interfaces/IWeatherSearch;

    iput-object v0, p0, Lcom/amap/api/services/weather/WeatherSearch;->a:Lcom/amap/api/services/interfaces/IWeatherSearch;
    :try_end_0
    .catch Lcom/amap/api/services/a/ar; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/weather/WeatherSearch;->a:Lcom/amap/api/services/interfaces/IWeatherSearch;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/amap/api/services/a/aq;

    invoke-direct {v0, p1}, Lcom/amap/api/services/a/aq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/services/weather/WeatherSearch;->a:Lcom/amap/api/services/interfaces/IWeatherSearch;

    .line 32
    :cond_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/ar;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getQuery()Lcom/amap/api/services/weather/WeatherSearchQuery;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amap/api/services/weather/WeatherSearch;->a:Lcom/amap/api/services/interfaces/IWeatherSearch;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/amap/api/services/weather/WeatherSearch;->a:Lcom/amap/api/services/interfaces/IWeatherSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IWeatherSearch;->getQuery()Lcom/amap/api/services/weather/WeatherSearchQuery;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public searchWeatherAsyn()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amap/api/services/weather/WeatherSearch;->a:Lcom/amap/api/services/interfaces/IWeatherSearch;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/amap/api/services/weather/WeatherSearch;->a:Lcom/amap/api/services/interfaces/IWeatherSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IWeatherSearch;->searchWeatherAsyn()V

    .line 65
    :cond_0
    return-void
.end method

.method public setOnWeatherSearchListener(Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amap/api/services/weather/WeatherSearch;->a:Lcom/amap/api/services/interfaces/IWeatherSearch;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/amap/api/services/weather/WeatherSearch;->a:Lcom/amap/api/services/interfaces/IWeatherSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IWeatherSearch;->setOnWeatherSearchListener(Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;)V

    .line 76
    :cond_0
    return-void
.end method

.method public setQuery(Lcom/amap/api/services/weather/WeatherSearchQuery;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amap/api/services/weather/WeatherSearch;->a:Lcom/amap/api/services/interfaces/IWeatherSearch;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/amap/api/services/weather/WeatherSearch;->a:Lcom/amap/api/services/interfaces/IWeatherSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IWeatherSearch;->setQuery(Lcom/amap/api/services/weather/WeatherSearchQuery;)V

    .line 55
    :cond_0
    return-void
.end method
