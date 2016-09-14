.class public Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;
.super Ljava/lang/Object;
.source "UpdateNutRequestBody.java"


# instance fields
.field private battery_level:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private devicePwLsb:Ljava/lang/String;

.field private devicePwMsb:Ljava/lang/String;

.field private disconnectRemind:Ljava/lang/String;

.field private disconnectRingtone:Ljava/lang/String;

.field private firmware:Ljava/lang/String;

.field private hardware:Ljava/lang/String;

.field private itemName:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private mode:Ljava/lang/String;

.field private nutStatus:Ljava/lang/String;

.field private reRemind:Ljava/lang/String;

.field private remindTime:Ljava/lang/String;

.field private tagId:Ljava/lang/String;

.field private twoWayAntiLost:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nut/blehunter/entity/Nut;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    invoke-static {p1}, Lcom/nut/blehunter/provider/l;->b(Lcom/nut/blehunter/entity/Nut;)V

    .line 33
    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;->itemName:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;->tagId:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;->deviceId:Ljava/lang/String;

    .line 36
    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;->devicePwMsb:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;->devicePwLsb:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;->nutStatus:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/PositionRecord;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 41
    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    iget-wide v0, v0, Lcom/nut/blehunter/entity/PositionRecord;->d:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;->longitude:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    iget-wide v0, v0, Lcom/nut/blehunter/entity/PositionRecord;->e:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;->latitude:Ljava/lang/String;

    .line 48
    :cond_0
    :goto_0
    iget v0, p1, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;->deviceName:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;->firmware:Ljava/lang/String;

    .line 52
    :cond_1
    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 53
    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;->hardware:Ljava/lang/String;

    .line 56
    :cond_2
    iget v0, p1, Lcom/nut/blehunter/entity/Nut;->y:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;->mode:Ljava/lang/String;

    .line 57
    iget v0, p1, Lcom/nut/blehunter/entity/Nut;->y:I

    if-nez v0, :cond_3

    .line 58
    iget v0, p1, Lcom/nut/blehunter/entity/Nut;->n:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;->twoWayAntiLost:Ljava/lang/String;

    .line 59
    iget v0, p1, Lcom/nut/blehunter/entity/Nut;->s:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;->disconnectRemind:Ljava/lang/String;

    .line 60
    iget v0, p1, Lcom/nut/blehunter/entity/Nut;->t:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;->reRemind:Ljava/lang/String;

    .line 61
    iget v0, p1, Lcom/nut/blehunter/entity/Nut;->u:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;->remindTime:Ljava/lang/String;

    .line 62
    iget v0, p1, Lcom/nut/blehunter/entity/Nut;->D:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;->disconnectRingtone:Ljava/lang/String;

    .line 65
    :cond_3
    iget v0, p1, Lcom/nut/blehunter/entity/Nut;->C:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;->battery_level:Ljava/lang/String;

    .line 66
    return-void

    .line 43
    :cond_4
    iget-wide v0, p1, Lcom/nut/blehunter/entity/Nut;->g:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/nut/blehunter/entity/Nut;->h:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 44
    iget-wide v0, p1, Lcom/nut/blehunter/entity/Nut;->g:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;->longitude:Ljava/lang/String;

    .line 45
    iget-wide v0, p1, Lcom/nut/blehunter/entity/Nut;->h:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;->latitude:Ljava/lang/String;

    goto :goto_0
.end method
