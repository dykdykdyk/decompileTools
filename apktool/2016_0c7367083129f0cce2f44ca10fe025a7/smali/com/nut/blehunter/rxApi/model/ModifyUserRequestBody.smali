.class public Lcom/nut/blehunter/rxApi/model/ModifyUserRequestBody;
.super Ljava/lang/Object;
.source "ModifyUserRequestBody.java"


# instance fields
.field public final alarm_time:Ljava/lang/String;

.field public final full_name:Ljava/lang/String;

.field public final gender:Ljava/lang/String;

.field public final position_status:Ljava/lang/String;

.field public final safe_region_android:Ljava/lang/String;

.field public final safe_time:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/nut/blehunter/rxApi/model/ModifyUserRequestBody;->full_name:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/nut/blehunter/rxApi/model/ModifyUserRequestBody;->gender:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/nut/blehunter/rxApi/model/ModifyUserRequestBody;->alarm_time:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/nut/blehunter/rxApi/model/ModifyUserRequestBody;->safe_region_android:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/nut/blehunter/rxApi/model/ModifyUserRequestBody;->safe_time:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/nut/blehunter/rxApi/model/ModifyUserRequestBody;->position_status:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static createModifyUserRequestBody(Lcom/nut/blehunter/entity/User;)Lcom/nut/blehunter/rxApi/model/ModifyUserRequestBody;
    .locals 8

    .prologue
    .line 24
    new-instance v0, Lcom/nut/blehunter/rxApi/model/ModifyUserRequestBody;

    iget-object v1, p0, Lcom/nut/blehunter/entity/User;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/nut/blehunter/entity/User;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/nut/blehunter/entity/User;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nut/blehunter/entity/User;->n:Ljava/lang/String;

    iget-object v5, p0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/nut/blehunter/entity/User;->r:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/nut/blehunter/rxApi/model/ModifyUserRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {}, Lcom/nut/blehunter/e;->a()Lcom/google/gson/Gson;

    move-result-object v5

    iget-object v6, p0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    invoke-virtual {v5, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
