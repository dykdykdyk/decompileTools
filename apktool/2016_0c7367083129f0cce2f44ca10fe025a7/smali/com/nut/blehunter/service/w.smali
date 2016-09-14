.class final Lcom/nut/blehunter/service/w;
.super Lcom/nut/blehunter/rxApi/j;
.source "NutTrackerService.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/entity/Nut;

.field final synthetic b:Lcom/nut/blehunter/service/NutTrackerService;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/service/NutTrackerService;Lcom/nut/blehunter/entity/Nut;)V
    .locals 0

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/nut/blehunter/service/w;->b:Lcom/nut/blehunter/service/NutTrackerService;

    iput-object p2, p0, Lcom/nut/blehunter/service/w;->a:Lcom/nut/blehunter/entity/Nut;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 2

    .prologue
    .line 1126
    iget v0, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_0

    .line 1127
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/service/w;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/l;->i(Ljava/lang/String;)V

    .line 1129
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1121
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/service/w;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/l;->i(Ljava/lang/String;)V

    .line 1122
    return-void
.end method
