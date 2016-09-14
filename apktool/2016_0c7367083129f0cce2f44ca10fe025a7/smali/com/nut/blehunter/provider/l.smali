.class public final Lcom/nut/blehunter/provider/l;
.super Lcom/nut/blehunter/provider/a;
.source "NutDataHelper.java"


# static fields
.field public static final b:[Ljava/lang/String;

.field private static c:Lcom/nut/blehunter/provider/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "device_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "create_time"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "devicePwLsb"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "devicePwMsb"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "product_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mode"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "pic_url"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sync_server_state"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "tag_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "two_way_anti_lost"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "update_time"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "uuid"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "lastLosingRecord"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "lost_start_size"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "lost_success_size"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "wechat_identifier"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "position_record"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "new_hardware_version"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "new_firmware_version"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "manufacture_name"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "disconnect_remind"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "reconnection_remind"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "remind_time"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "is_mine"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "shared_user"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "disconnect_ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "user"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "battery_level"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nut/blehunter/provider/l;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/nut/blehunter/provider/a;-><init>()V

    return-void
.end method

.method public static a(Landroid/database/Cursor;)Lcom/nut/blehunter/entity/Nut;
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 717
    new-instance v2, Lcom/nut/blehunter/entity/Nut;

    invoke-direct {v2}, Lcom/nut/blehunter/entity/Nut;-><init>()V

    .line 718
    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/nut/blehunter/entity/Nut;->I:I

    .line 719
    const-string v0, "create_time"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/nut/blehunter/entity/Nut;->a:J

    .line 720
    const-string v0, "update_time"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/nut/blehunter/entity/Nut;->b:J

    .line 721
    const-string v0, "name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    .line 722
    const-string v0, "devicePwMsb"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/nut/blehunter/entity/Nut;->d:Ljava/lang/String;

    .line 723
    const-string v0, "devicePwLsb"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/nut/blehunter/entity/Nut;->e:Ljava/lang/String;

    .line 724
    const-string v0, "uuid"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/nut/blehunter/entity/Nut;->f:Ljava/lang/String;

    .line 725
    const-string v0, "sync_server_state"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/nut/blehunter/entity/Nut;->J:I

    .line 726
    const-string v0, "longitude"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/nut/blehunter/entity/Nut;->g:D

    .line 727
    const-string v0, "latitude"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/nut/blehunter/entity/Nut;->h:D

    .line 728
    const-string v0, "pic_url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/nut/blehunter/entity/Nut;->i:Ljava/lang/String;

    .line 729
    const-string v0, "device_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    .line 730
    const-string v0, "mode"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/nut/blehunter/entity/Nut;->y:I

    .line 731
    const-string v0, "description"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/nut/blehunter/entity/Nut;->l:Ljava/lang/String;

    .line 732
    const-string v0, "product_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/nut/blehunter/entity/Nut;->p:I

    .line 733
    const-string v0, "status"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/nut/blehunter/entity/Nut;->K:I

    .line 734
    const-string v0, "two_way_anti_lost"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/nut/blehunter/entity/Nut;->n:I

    .line 735
    const-string v0, "user_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/nut/blehunter/entity/Nut;->H:Ljava/lang/String;

    .line 736
    const-string v0, "tag_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    .line 737
    const-string v0, "lastLosingRecord"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 738
    const-class v3, Lcom/nut/blehunter/entity/LosingRecord;

    .line 3049
    invoke-static {v0, v3}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 738
    check-cast v0, Lcom/nut/blehunter/entity/LosingRecord;

    iput-object v0, v2, Lcom/nut/blehunter/entity/Nut;->o:Lcom/nut/blehunter/entity/LosingRecord;

    .line 739
    const-string v0, "lost_start_size"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/nut/blehunter/entity/Nut;->F:I

    .line 740
    const-string v0, "lost_success_size"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/nut/blehunter/entity/Nut;->G:I

    .line 741
    const-string v0, "wechat_identifier"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 742
    const-class v3, Lcom/nut/blehunter/entity/WechatIdentifier;

    .line 4049
    invoke-static {v0, v3}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 742
    check-cast v0, Lcom/nut/blehunter/entity/WechatIdentifier;

    iput-object v0, v2, Lcom/nut/blehunter/entity/Nut;->q:Lcom/nut/blehunter/entity/WechatIdentifier;

    .line 744
    const-string v0, "new_hardware_version"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/nut/blehunter/entity/Nut;->w:Ljava/lang/String;

    .line 745
    const-string v0, "new_firmware_version"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/nut/blehunter/entity/Nut;->v:Ljava/lang/String;

    .line 746
    const-string v0, "manufacture_name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/nut/blehunter/entity/Nut;->x:Ljava/lang/String;

    .line 747
    const-string v0, "disconnect_remind"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/nut/blehunter/entity/Nut;->s:I

    .line 748
    const-string v0, "reconnection_remind"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/nut/blehunter/entity/Nut;->t:I

    .line 749
    const-string v0, "remind_time"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/nut/blehunter/entity/Nut;->u:I

    .line 750
    const-string v0, "is_mine"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v2, Lcom/nut/blehunter/entity/Nut;->E:Z

    .line 752
    const-string v0, "position_record"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 753
    const-class v1, Lcom/nut/blehunter/entity/PositionRecord;

    .line 5049
    invoke-static {v0, v1}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 753
    check-cast v0, Lcom/nut/blehunter/entity/PositionRecord;

    iput-object v0, v2, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    .line 757
    iget-object v0, v2, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    if-nez v0, :cond_2

    .line 758
    new-instance v0, Lcom/nut/blehunter/entity/PositionRecord;

    invoke-direct {v0}, Lcom/nut/blehunter/entity/PositionRecord;-><init>()V

    iput-object v0, v2, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    .line 759
    iget-object v0, v2, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    iget-wide v4, v2, Lcom/nut/blehunter/entity/Nut;->b:J

    iput-wide v4, v0, Lcom/nut/blehunter/entity/PositionRecord;->b:J

    .line 760
    iget-object v0, v2, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    iget-wide v4, v2, Lcom/nut/blehunter/entity/Nut;->h:D

    iput-wide v4, v0, Lcom/nut/blehunter/entity/PositionRecord;->e:D

    .line 761
    iget-object v0, v2, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    iget-wide v4, v2, Lcom/nut/blehunter/entity/Nut;->g:D

    iput-wide v4, v0, Lcom/nut/blehunter/entity/PositionRecord;->d:D

    .line 768
    :cond_0
    :goto_1
    const-string v0, "shared_user"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 769
    invoke-static {v0}, Lcom/nut/blehunter/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Lcom/nut/blehunter/entity/Nut;->A:Ljava/util/List;

    .line 770
    const-string v0, "disconnect_ringtone"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/nut/blehunter/entity/Nut;->D:I

    .line 771
    const-string v0, "user"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 772
    const-class v1, Lcom/nut/blehunter/entity/User;

    .line 6049
    invoke-static {v0, v1}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 772
    check-cast v0, Lcom/nut/blehunter/entity/User;

    iput-object v0, v2, Lcom/nut/blehunter/entity/Nut;->B:Lcom/nut/blehunter/entity/User;

    .line 773
    const-string v0, "battery_level"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/nut/blehunter/entity/Nut;->C:I

    .line 774
    return-object v2

    .line 750
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 762
    :cond_2
    iget-object v0, v2, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/PositionRecord;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 763
    iget-object v0, v2, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    iget-wide v4, v2, Lcom/nut/blehunter/entity/Nut;->b:J

    iput-wide v4, v0, Lcom/nut/blehunter/entity/PositionRecord;->b:J

    .line 764
    iget-object v0, v2, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    iget-wide v4, v2, Lcom/nut/blehunter/entity/Nut;->h:D

    iput-wide v4, v0, Lcom/nut/blehunter/entity/PositionRecord;->e:D

    .line 765
    iget-object v0, v2, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    iget-wide v4, v2, Lcom/nut/blehunter/entity/Nut;->g:D

    iput-wide v4, v0, Lcom/nut/blehunter/entity/PositionRecord;->d:D

    goto :goto_1
.end method

.method public static a(Lcom/nut/blehunter/entity/Nut;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 496
    iput-boolean p2, p0, Lcom/nut/blehunter/entity/Nut;->E:Z

    .line 497
    iput-object p1, p0, Lcom/nut/blehunter/entity/Nut;->H:Ljava/lang/String;

    .line 498
    const-string v0, "BINDING"

    iget-object v5, p0, Lcom/nut/blehunter/entity/Nut;->m:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UNLOSING"

    iget-object v5, p0, Lcom/nut/blehunter/entity/Nut;->m:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    :cond_0
    const-string v0, "DISCONNECT"

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->m:Ljava/lang/String;

    .line 501
    iput v1, p0, Lcom/nut/blehunter/entity/Nut;->K:I

    .line 2513
    :cond_1
    iget-object v5, p0, Lcom/nut/blehunter/entity/Nut;->m:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_2
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 2539
    iput v1, p0, Lcom/nut/blehunter/entity/Nut;->K:I

    .line 504
    :goto_1
    iget-boolean v0, p0, Lcom/nut/blehunter/entity/Nut;->E:Z

    if-nez v0, :cond_3

    .line 505
    iput v2, p0, Lcom/nut/blehunter/entity/Nut;->y:I

    .line 507
    :cond_3
    iget-boolean v0, p0, Lcom/nut/blehunter/entity/Nut;->E:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nut/blehunter/entity/Nut;->z:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nut/blehunter/entity/Nut;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 508
    iget-object v0, p0, Lcom/nut/blehunter/entity/Nut;->z:Ljava/util/List;

    .line 2545
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/NutConfig;

    .line 2546
    iget v2, v0, Lcom/nut/blehunter/entity/NutConfig;->a:I

    if-nez v2, :cond_4

    .line 2547
    iget v1, v0, Lcom/nut/blehunter/entity/NutConfig;->c:I

    iput v1, p0, Lcom/nut/blehunter/entity/Nut;->s:I

    .line 2548
    iget v1, v0, Lcom/nut/blehunter/entity/NutConfig;->e:I

    iput v1, p0, Lcom/nut/blehunter/entity/Nut;->u:I

    .line 2549
    iget v1, v0, Lcom/nut/blehunter/entity/NutConfig;->d:I

    iput v1, p0, Lcom/nut/blehunter/entity/Nut;->t:I

    .line 2550
    iget v1, v0, Lcom/nut/blehunter/entity/NutConfig;->b:I

    iput v1, p0, Lcom/nut/blehunter/entity/Nut;->n:I

    .line 2551
    iget v0, v0, Lcom/nut/blehunter/entity/NutConfig;->f:I

    iput v0, p0, Lcom/nut/blehunter/entity/Nut;->D:I

    .line 2552
    :cond_5
    return-void

    .line 2513
    :sswitch_0
    const-string v6, "DISCONNECT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v6, "BINDING"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v6, "LOSING"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    goto :goto_0

    :sswitch_3
    const-string v6, "UNLOSING"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v4

    goto :goto_0

    :sswitch_4
    const-string v6, "FINDING"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v6, "DFU"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x5

    goto/16 :goto_0

    .line 2515
    :pswitch_0
    iput v1, p0, Lcom/nut/blehunter/entity/Nut;->K:I

    goto :goto_1

    .line 2519
    :pswitch_1
    iput v2, p0, Lcom/nut/blehunter/entity/Nut;->K:I

    goto/16 :goto_1

    .line 2523
    :pswitch_2
    iput v3, p0, Lcom/nut/blehunter/entity/Nut;->K:I

    goto/16 :goto_1

    .line 2527
    :pswitch_3
    iput v4, p0, Lcom/nut/blehunter/entity/Nut;->K:I

    goto/16 :goto_1

    .line 2531
    :pswitch_4
    const/4 v0, 0x6

    iput v0, p0, Lcom/nut/blehunter/entity/Nut;->K:I

    goto/16 :goto_1

    .line 2535
    :pswitch_5
    const/4 v0, 0x7

    iput v0, p0, Lcom/nut/blehunter/entity/Nut;->K:I

    goto/16 :goto_1

    .line 2513
    :sswitch_data_0
    .sparse-switch
        -0x79cf996e -> :sswitch_2
        -0x80ed897 -> :sswitch_4
        0x10813 -> :sswitch_5
        0x221a5a6b -> :sswitch_3
        0x24583a65 -> :sswitch_1
        0x3c87449c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static declared-synchronized b()Lcom/nut/blehunter/provider/l;
    .locals 2

    .prologue
    .line 71
    const-class v1, Lcom/nut/blehunter/provider/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nut/blehunter/provider/l;->c:Lcom/nut/blehunter/provider/l;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/nut/blehunter/provider/l;

    invoke-direct {v0}, Lcom/nut/blehunter/provider/l;-><init>()V

    sput-object v0, Lcom/nut/blehunter/provider/l;->c:Lcom/nut/blehunter/provider/l;

    .line 74
    :cond_0
    sget-object v0, Lcom/nut/blehunter/provider/l;->c:Lcom/nut/blehunter/provider/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Lcom/nut/blehunter/entity/Nut;)V
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/nut/blehunter/entity/Nut;->K:I

    packed-switch v0, :pswitch_data_0

    .line 584
    :pswitch_0
    const-string v0, "DISCONNECT"

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->m:Ljava/lang/String;

    .line 587
    :goto_0
    return-void

    .line 560
    :pswitch_1
    const-string v0, "DISCONNECT"

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->m:Ljava/lang/String;

    goto :goto_0

    .line 564
    :pswitch_2
    const-string v0, "BINDING"

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->m:Ljava/lang/String;

    goto :goto_0

    .line 568
    :pswitch_3
    const-string v0, "LOSING"

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->m:Ljava/lang/String;

    goto :goto_0

    .line 572
    :pswitch_4
    const-string v0, "UNLOSING"

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->m:Ljava/lang/String;

    goto :goto_0

    .line 576
    :pswitch_5
    const-string v0, "FINDING"

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->m:Ljava/lang/String;

    goto :goto_0

    .line 580
    :pswitch_6
    const-string v0, "DFU"

    iput-object v0, p0, Lcom/nut/blehunter/entity/Nut;->m:Ljava/lang/String;

    goto :goto_0

    .line 558
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private e(Lcom/nut/blehunter/entity/Nut;)V
    .locals 3

    .prologue
    .line 448
    new-instance v0, Landroid/content/Intent;

    .line 1027
    iget-object v1, p0, Lcom/nut/blehunter/provider/a;->a:Landroid/content/Context;

    .line 448
    const-class v2, Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 449
    const-string v1, "com.nutspace.action.execute.nut.api"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    const-string v1, "nut"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2027
    iget-object v1, p0, Lcom/nut/blehunter/provider/a;->a:Landroid/content/Context;

    .line 451
    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 452
    return-void
.end method

.method private static f(Lcom/nut/blehunter/entity/Nut;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 779
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 780
    const-string v0, "create_time"

    iget-wide v2, p0, Lcom/nut/blehunter/entity/Nut;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 781
    const-string v0, "update_time"

    iget-wide v2, p0, Lcom/nut/blehunter/entity/Nut;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 782
    const-string v0, "device_id"

    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string v0, "devicePwLsb"

    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string v0, "devicePwMsb"

    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const-string v0, "mode"

    iget v2, p0, Lcom/nut/blehunter/entity/Nut;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 786
    const-string v0, "name"

    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string v0, "latitude"

    iget-wide v2, p0, Lcom/nut/blehunter/entity/Nut;->h:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 788
    const-string v0, "longitude"

    iget-wide v2, p0, Lcom/nut/blehunter/entity/Nut;->g:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 789
    const-string v0, "pic_url"

    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string v0, "sync_server_state"

    iget v2, p0, Lcom/nut/blehunter/entity/Nut;->J:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 791
    const-string v0, "uuid"

    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v0, "description"

    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->l:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const-string v0, "product_id"

    iget v2, p0, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 794
    const-string v0, "status"

    iget v2, p0, Lcom/nut/blehunter/entity/Nut;->K:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 795
    const-string v0, "two_way_anti_lost"

    iget v2, p0, Lcom/nut/blehunter/entity/Nut;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 796
    const-string v0, "user_id"

    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->H:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const-string v0, "tag_id"

    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    invoke-static {}, Lcom/nut/blehunter/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->o:Lcom/nut/blehunter/entity/LosingRecord;

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 799
    const-string v2, "lastLosingRecord"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string v0, "lost_start_size"

    iget v2, p0, Lcom/nut/blehunter/entity/Nut;->F:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 801
    const-string v0, "lost_success_size"

    iget v2, p0, Lcom/nut/blehunter/entity/Nut;->G:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 802
    const-string v0, "wechat_identifier"

    invoke-static {}, Lcom/nut/blehunter/e;->a()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/nut/blehunter/entity/Nut;->q:Lcom/nut/blehunter/entity/WechatIdentifier;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const-string v0, "position_record"

    invoke-static {}, Lcom/nut/blehunter/e;->a()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    iget-object v0, p0, Lcom/nut/blehunter/entity/Nut;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 805
    const-string v0, "new_hardware_version"

    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->w:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/entity/Nut;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 808
    const-string v0, "new_firmware_version"

    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->v:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/entity/Nut;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 811
    const-string v0, "manufacture_name"

    iget-object v2, p0, Lcom/nut/blehunter/entity/Nut;->x:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    :cond_2
    const-string v0, "disconnect_remind"

    iget v2, p0, Lcom/nut/blehunter/entity/Nut;->s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 814
    const-string v0, "reconnection_remind"

    iget v2, p0, Lcom/nut/blehunter/entity/Nut;->t:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 815
    const-string v0, "remind_time"

    iget v2, p0, Lcom/nut/blehunter/entity/Nut;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 816
    const-string v2, "is_mine"

    iget-boolean v0, p0, Lcom/nut/blehunter/entity/Nut;->E:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 817
    const-string v0, "shared_user"

    invoke-static {}, Lcom/nut/blehunter/e;->a()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/nut/blehunter/entity/Nut;->A:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-string v0, "disconnect_ringtone"

    iget v2, p0, Lcom/nut/blehunter/entity/Nut;->D:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 819
    const-string v0, "user"

    invoke-static {}, Lcom/nut/blehunter/e;->a()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/nut/blehunter/entity/Nut;->B:Lcom/nut/blehunter/entity/User;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string v0, "battery_level"

    iget v2, p0, Lcom/nut/blehunter/entity/Nut;->C:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 821
    return-object v1

    .line 816
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/nut/blehunter/provider/e;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public final a(Lcom/nut/blehunter/entity/Nut;)V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/provider/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    invoke-virtual {p0, p1}, Lcom/nut/blehunter/provider/l;->c(Lcom/nut/blehunter/entity/Nut;)V

    .line 409
    invoke-direct {p0, p1}, Lcom/nut/blehunter/provider/l;->e(Lcom/nut/blehunter/entity/Nut;)V

    .line 411
    :cond_0
    return-void
.end method

.method public final a(Lcom/nut/blehunter/entity/Nut;Z)V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/provider/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    invoke-static {}, Lcom/nut/blehunter/d/c;->a()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/nut/blehunter/entity/Nut;->b:J

    .line 357
    if-eqz p2, :cond_0

    iget v0, p1, Lcom/nut/blehunter/entity/Nut;->J:I

    if-nez v0, :cond_0

    .line 358
    const/4 v0, 0x2

    iput v0, p1, Lcom/nut/blehunter/entity/Nut;->J:I

    .line 361
    :cond_0
    iget v0, p1, Lcom/nut/blehunter/entity/Nut;->u:I

    if-nez v0, :cond_1

    .line 362
    const/4 v0, 0x5

    iput v0, p1, Lcom/nut/blehunter/entity/Nut;->u:I

    .line 363
    const/4 v0, 0x1

    iput v0, p1, Lcom/nut/blehunter/entity/Nut;->s:I

    .line 365
    :cond_1
    invoke-virtual {p0, p1}, Lcom/nut/blehunter/provider/l;->d(Lcom/nut/blehunter/entity/Nut;)V

    .line 366
    if-eqz p2, :cond_2

    .line 367
    invoke-direct {p0, p1}, Lcom/nut/blehunter/provider/l;->e(Lcom/nut/blehunter/entity/Nut;)V

    .line 370
    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 429
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 430
    const-string v1, "sync_server_state"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 431
    const-string v1, "device_id = ? AND sync_server_state != ? "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string v4, "1"

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/nut/blehunter/provider/l;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 433
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 436
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 437
    const-string v1, "pic_url"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v1, "device_id = ? "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/nut/blehunter/provider/l;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 439
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nut/blehunter/entity/ShareUserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    const-string v0, ""

    .line 397
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 398
    invoke-static {}, Lcom/nut/blehunter/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 400
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 401
    const-string v2, "shared_user"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v0, "device_id = ? AND sync_server_state != ? "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string v4, "1"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v0, v2}, Lcom/nut/blehunter/provider/l;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 404
    return-void
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nut/blehunter/entity/Nut;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 480
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2468
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    .line 485
    if-eqz v1, :cond_0

    .line 489
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    .line 490
    iget-object v3, v1, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    invoke-static {v0, v3, p2}, Lcom/nut/blehunter/provider/l;->a(Lcom/nut/blehunter/entity/Nut;Ljava/lang/String;Z)V

    goto :goto_1

    .line 2467
    :cond_2
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2470
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2471
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    .line 2472
    invoke-static {v0}, Lcom/nut/blehunter/provider/l;->f(Lcom/nut/blehunter/entity/Nut;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2473
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2475
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 2476
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/provider/l;->a([Landroid/content/ContentValues;)I

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 155
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v2

    .line 156
    if-nez v2, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v0

    .line 159
    :cond_1
    sget-object v3, Lcom/nut/blehunter/provider/l;->b:[Ljava/lang/String;

    const-string v4, "sync_server_state != ? AND user_id = ? AND product_id = ? AND device_id != ?"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    iget-object v2, v2, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    aput-object v2, v5, v0

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x3

    aput-object p2, v5, v2

    const-string v2, "update_time DESC"

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/nut/blehunter/provider/l;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 164
    if-eqz v2, :cond_0

    .line 166
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 167
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 168
    const-string v3, "new_firmware_version"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-le v4, v3, :cond_2

    .line 179
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v1

    .line 102
    :cond_1
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v2

    .line 103
    if-eqz v2, :cond_0

    .line 106
    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v3, v1

    .line 107
    const-string v4, "device_id = ? AND sync_server_state != ? AND user_id = ?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v1

    const-string v6, "1"

    aput-object v6, v5, v0

    const/4 v6, 0x2

    iget-object v2, v2, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    aput-object v2, v5, v6

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/nut/blehunter/provider/l;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 112
    if-eqz v2, :cond_3

    .line 114
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lez v3, :cond_2

    .line 116
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_2
    move v1, v0

    .line 119
    goto :goto_0

    :cond_2
    move v0, v1

    .line 114
    goto :goto_1

    .line 116
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 442
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 443
    const-string v1, "disconnect_ringtone"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 444
    const-string v1, "device_id = ? "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/nut/blehunter/provider/l;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 445
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/nut/blehunter/provider/l;->i()Ljava/util/List;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 125
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    .line 126
    iget-object v2, v0, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 191
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-object v0

    .line 195
    :cond_1
    sget-object v2, Lcom/nut/blehunter/provider/l;->b:[Ljava/lang/String;

    const-string v3, "device_id = ? AND sync_server_state != ? AND user_id = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v1, v1, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/nut/blehunter/provider/l;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 199
    if-eqz v1, :cond_0

    .line 201
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 202
    invoke-static {v1}, Lcom/nut/blehunter/provider/l;->a(Landroid/database/Cursor;)Lcom/nut/blehunter/entity/Nut;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 205
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final c(Lcom/nut/blehunter/entity/Nut;)V
    .locals 1

    .prologue
    .line 590
    invoke-static {p1}, Lcom/nut/blehunter/provider/l;->f(Lcom/nut/blehunter/entity/Nut;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/provider/l;->a(Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 591
    return-void
.end method

.method public final c()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 83
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v2

    .line 84
    if-nez v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v3, v1

    const-string v4, "sync_server_state != ? AND user_id = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    iget-object v2, v2, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    aput-object v2, v5, v0

    const-string v2, "update_time DESC"

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/nut/blehunter/provider/l;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 90
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 218
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-object v0

    .line 222
    :cond_1
    sget-object v2, Lcom/nut/blehunter/provider/l;->b:[Ljava/lang/String;

    const-string v3, "tag_id = ? AND sync_server_state != ? AND user_id = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v1, v1, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/nut/blehunter/provider/l;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 227
    if-eqz v1, :cond_0

    .line 229
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 230
    invoke-static {v1}, Lcom/nut/blehunter/provider/l;->a(Landroid/database/Cursor;)Lcom/nut/blehunter/entity/Nut;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 233
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final d(Lcom/nut/blehunter/entity/Nut;)V
    .locals 5

    .prologue
    .line 594
    invoke-static {p1}, Lcom/nut/blehunter/provider/l;->f(Lcom/nut/blehunter/entity/Nut;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "device_id = ? AND sync_server_state != ? "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "1"

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/nut/blehunter/provider/l;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 597
    return-void
.end method

.method public final d()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v2

    .line 136
    if-nez v2, :cond_0

    .line 150
    :goto_0
    return v1

    .line 139
    :cond_0
    sget-object v3, Lcom/nut/blehunter/provider/l;->b:[Ljava/lang/String;

    const-string v4, "sync_server_state != ? AND user_id = ? AND (status = ? OR status = ? )"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    iget-object v2, v2, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    aput-object v2, v5, v0

    const/4 v2, 0x2

    const-string v6, "0"

    aput-object v6, v5, v2

    const/4 v2, 0x3

    const-string v6, "7"

    aput-object v6, v5, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/nut/blehunter/provider/l;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 143
    if-eqz v2, :cond_2

    .line 145
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lez v3, :cond_1

    .line 147
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_2
    move v1, v0

    .line 150
    goto :goto_0

    :cond_1
    move v0, v1

    .line 145
    goto :goto_1

    .line 147
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public final e(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 246
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-object v0

    .line 250
    :cond_1
    sget-object v2, Lcom/nut/blehunter/provider/l;->b:[Ljava/lang/String;

    const-string v3, "uuid = ? AND sync_server_state != ? AND user_id = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v1, v1, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/nut/blehunter/provider/l;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 255
    if-eqz v1, :cond_0

    .line 257
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 258
    invoke-static {v1}, Lcom/nut/blehunter/provider/l;->a(Landroid/database/Cursor;)Lcom/nut/blehunter/entity/Nut;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 261
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final e()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nut/blehunter/entity/Nut;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 269
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    .line 270
    if-nez v1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-object v0

    .line 273
    :cond_1
    sget-object v2, Lcom/nut/blehunter/provider/l;->b:[Ljava/lang/String;

    const-string v3, "sync_server_state != ? AND user_id = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v1, v1, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/nut/blehunter/provider/l;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 276
    if-eqz v1, :cond_0

    .line 278
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 282
    invoke-static {v1}, Lcom/nut/blehunter/provider/l;->a(Landroid/database/Cursor;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v2

    .line 283
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 288
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public final f()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nut/blehunter/entity/Nut;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 296
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    .line 297
    if-nez v1, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-object v0

    .line 300
    :cond_1
    sget-object v2, Lcom/nut/blehunter/provider/l;->b:[Ljava/lang/String;

    const-string v3, "(status = ? OR status = ? ) AND user_id = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "6"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "2"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v1, v1, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/nut/blehunter/provider/l;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 304
    if-eqz v1, :cond_0

    .line 306
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 310
    invoke-static {v1}, Lcom/nut/blehunter/provider/l;->a(Landroid/database/Cursor;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v2

    .line 311
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 316
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nut/blehunter/entity/ShareUserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 373
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    .line 374
    if-nez v1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-object v0

    .line 377
    :cond_1
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "shared_user"

    aput-object v3, v2, v5

    const-string v3, "device_id = ? AND sync_server_state != ? AND user_id = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const-string v5, "1"

    aput-object v5, v4, v6

    const/4 v5, 0x2

    iget-object v1, v1, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/nut/blehunter/provider/l;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 381
    if-eqz v1, :cond_0

    .line 383
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    const-string v0, "shared_user"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-static {v0}, Lcom/nut/blehunter/e;->b(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 388
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final g()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 324
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    .line 325
    if-nez v1, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-object v0

    .line 328
    :cond_1
    sget-object v2, Lcom/nut/blehunter/provider/l;->b:[Ljava/lang/String;

    const-string v3, "sync_server_state != ? AND user_id = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v1, v1, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/nut/blehunter/provider/l;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 331
    const-string v0, ""

    .line 332
    if-eqz v1, :cond_0

    .line 334
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 335
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 336
    invoke-static {v1}, Lcom/nut/blehunter/provider/l;->a(Landroid/database/Cursor;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v2

    .line 337
    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 340
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 345
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 414
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 415
    const-string v1, "status"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    const-string v1, "device_id = ? AND status = ? AND sync_server_state != ? "

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "1"

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/nut/blehunter/provider/l;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 419
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 463
    invoke-virtual {p0, v0, v0}, Lcom/nut/blehunter/provider/l;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 464
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 422
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 423
    const-string v1, "status"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 424
    const-string v1, "device_id = ? AND sync_server_state != ? "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string v4, "1"

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/nut/blehunter/provider/l;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 426
    return-void
.end method

.method public final i()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nut/blehunter/entity/Nut;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 600
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    .line 601
    if-nez v1, :cond_1

    .line 623
    :cond_0
    :goto_0
    return-object v0

    .line 604
    :cond_1
    sget-object v2, Lcom/nut/blehunter/provider/l;->b:[Ljava/lang/String;

    const-string v3, "sync_server_state != ? AND user_id = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v1, v1, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    aput-object v1, v4, v5

    const-string v1, "update_time DESC"

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/nut/blehunter/provider/l;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 607
    if-eqz v1, :cond_0

    .line 609
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 612
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 613
    invoke-static {v1}, Lcom/nut/blehunter/provider/l;->a(Landroid/database/Cursor;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 618
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 455
    const-string v0, "device_id = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/provider/l;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 456
    return-void
.end method

.method public final j()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nut/blehunter/entity/Nut;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 627
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    .line 628
    if-nez v1, :cond_1

    .line 651
    :cond_0
    :goto_0
    return-object v0

    .line 631
    :cond_1
    sget-object v2, Lcom/nut/blehunter/provider/l;->b:[Ljava/lang/String;

    const-string v3, "sync_server_state != ? AND user_id = ? AND mode = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v1, v1, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    aput-object v1, v4, v5

    const/4 v1, 0x2

    const-string v5, "1"

    aput-object v5, v4, v1

    const-string v1, "update_time DESC"

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/nut/blehunter/provider/l;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 636
    if-eqz v1, :cond_0

    .line 638
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 639
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 640
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 641
    invoke-static {v1}, Lcom/nut/blehunter/provider/l;->a(Landroid/database/Cursor;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 646
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
