.class final Lcom/loc/dt;
.super Ljava/lang/Object;
.source "LastLocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/loc/ds;


# direct methods
.method constructor <init>(Lcom/loc/ds;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/dt;->a:Lcom/loc/ds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/loc/dt;->a:Lcom/loc/ds;

    .line 1000
    iget-object v0, v0, Lcom/loc/ds;->b:Lcom/amap/api/location/AMapLocation;

    .line 0
    invoke-static {v0}, Lcom/loc/dn;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/dt;->a:Lcom/loc/ds;

    .line 2000
    iget-object v0, v0, Lcom/loc/ds;->b:Lcom/amap/api/location/AMapLocation;

    .line 0
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->toStr()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "UTF-8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/loc/dt;->a:Lcom/loc/ds;

    .line 3000
    iget-object v1, v1, Lcom/loc/ds;->a:Ljava/lang/String;

    .line 0
    invoke-static {v0, v1}, Lcom/loc/cq;->c([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/ej;->a([B)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/loc/cx;

    invoke-direct {v1}, Lcom/loc/cx;-><init>()V

    .line 4000
    iput-object v0, v1, Lcom/loc/cx;->a:Ljava/lang/String;

    .line 0
    invoke-static {}, Lcom/loc/dn;->a()J

    move-result-wide v2

    .line 5000
    iput-wide v2, v1, Lcom/loc/cx;->b:J

    .line 0
    iget-object v0, p0, Lcom/loc/dt;->a:Lcom/loc/ds;

    .line 6000
    iget-object v0, v0, Lcom/loc/ds;->c:Lcom/loc/o;

    .line 0
    const-string v2, "_id=1"

    invoke-virtual {v0, v1, v2}, Lcom/loc/o;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dt;->a:Lcom/loc/ds;

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v2

    .line 7000
    iput-wide v2, v0, Lcom/loc/ds;->d:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 0
    :catch_0
    move-exception v0

    const-string v1, "LastLocationManager"

    const-string v2, "saveLastFix"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
