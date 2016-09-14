.class final Lcom/nut/blehunter/service/t;
.super Ljava/lang/Object;
.source "NutTrackerService.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/t;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/nut/blehunter/service/NutTrackerService;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/service/NutTrackerService;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/nut/blehunter/service/t;->b:Lcom/nut/blehunter/service/NutTrackerService;

    iput-object p2, p0, Lcom/nut/blehunter/service/t;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/entity/CustomLatLng;)V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/nut/blehunter/service/t;->b:Lcom/nut/blehunter/service/NutTrackerService;

    iget-object v1, p0, Lcom/nut/blehunter/service/t;->a:Ljava/util/List;

    invoke-static {v0, p1, v1}, Lcom/nut/blehunter/service/NutTrackerService;->a(Lcom/nut/blehunter/service/NutTrackerService;Lcom/nut/blehunter/entity/CustomLatLng;Ljava/util/List;)V

    .line 560
    return-void
.end method
