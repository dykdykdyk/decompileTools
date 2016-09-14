.class final Lcom/nut/blehunter/service/p;
.super Lcom/nut/blehunter/rxApi/j;
.source "NutTrackerService.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/service/NutTrackerService;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/service/NutTrackerService;)V
    .locals 0

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/nut/blehunter/service/p;->a:Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 3

    .prologue
    .line 1596
    iget-object v0, p0, Lcom/nut/blehunter/service/p;->a:Lcom/nut/blehunter/service/NutTrackerService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1597
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/nut/blehunter/service/p;->a:Lcom/nut/blehunter/service/NutTrackerService;

    const-string v1, "update finish"

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1592
    return-void
.end method
