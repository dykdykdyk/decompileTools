.class final Lcom/nut/blehunter/ui/b/l;
.super Ljava/lang/Thread;
.source "GoogleFragment.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/entity/CustomLatLng;

.field final synthetic b:Lcom/nut/blehunter/ui/b/j;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/b/j;Lcom/nut/blehunter/entity/CustomLatLng;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/l;->b:Lcom/nut/blehunter/ui/b/j;

    iput-object p2, p0, Lcom/nut/blehunter/ui/b/l;->a:Lcom/nut/blehunter/entity/CustomLatLng;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 424
    const-string v0, ""

    .line 425
    const/4 v7, 0x0

    .line 427
    :try_start_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/l;->a:Lcom/nut/blehunter/entity/CustomLatLng;

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/CustomLatLng;->a()Lcom/nut/blehunter/entity/CustomLatLng;

    move-result-object v4

    .line 428
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/l;->b:Lcom/nut/blehunter/ui/b/j;

    invoke-static {v1}, Lcom/nut/blehunter/ui/b/j;->c(Lcom/nut/blehunter/ui/b/j;)Landroid/location/Geocoder;

    move-result-object v1

    .line 1048
    iget-wide v2, v4, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    .line 1052
    iget-wide v4, v4, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    .line 428
    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 432
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 433
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/j;->a(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v0

    .line 436
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 437
    iget-object v2, p0, Lcom/nut/blehunter/ui/b/l;->b:Lcom/nut/blehunter/ui/b/j;

    invoke-static {v2}, Lcom/nut/blehunter/ui/b/j;->d(Lcom/nut/blehunter/ui/b/j;)Lcom/nut/blehunter/ui/b/m;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 438
    iput v9, v1, Landroid/os/Message;->what:I

    .line 439
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 440
    const-string v3, "address"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v0, "latitude"

    iget-object v3, p0, Lcom/nut/blehunter/ui/b/l;->a:Lcom/nut/blehunter/entity/CustomLatLng;

    .line 2048
    iget-wide v4, v3, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    .line 441
    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 442
    const-string v0, "longitude"

    iget-object v3, p0, Lcom/nut/blehunter/ui/b/l;->a:Lcom/nut/blehunter/entity/CustomLatLng;

    .line 2052
    iget-wide v4, v3, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    .line 442
    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 443
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 444
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 445
    return-void

    .line 430
    :catch_0
    move-exception v1

    const-string v2, "ReverseGeocodingTask IOException"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, La/a/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v7

    goto :goto_0
.end method
