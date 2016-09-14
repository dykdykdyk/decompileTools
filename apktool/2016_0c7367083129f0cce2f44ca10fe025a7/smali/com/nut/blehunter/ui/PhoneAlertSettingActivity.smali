.class public Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;
.super Lcom/nut/blehunter/ui/b;
.source "PhoneAlertSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/nut/blehunter/ui/b/a/d;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/nut/blehunter/entity/Nut;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 5

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/support/v4/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 128
    :goto_1
    return-void

    .line 105
    :pswitch_0
    const-string v2, "picker_number"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 107
    :pswitch_1
    check-cast p1, Lcom/nut/blehunter/ui/b/a/v;

    .line 3074
    iget-object v0, p1, Lcom/nut/blehunter/ui/b/a/v;->f:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->a:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p0, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->b:Lcom/nut/blehunter/entity/Nut;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/nut/blehunter/entity/Nut;->u:I

    .line 110
    const-string v0, "NTNutEvent"

    const-string v1, "NUT_SETTINGS_CHANGED"

    const-string v2, "PHONE_ALERT_DISCONNECTED_RING_TIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->b:Lcom/nut/blehunter/entity/Nut;

    iget v4, v4, Lcom/nut/blehunter/entity/Nut;->u:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->b:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->u:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 114
    :sswitch_0
    const-string v0, "item_settings_phone_alert_3s"

    .line 3281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :sswitch_1
    const-string v0, "item_settings_phone_alert_5s"

    .line 4281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 120
    :sswitch_2
    const-string v0, "item_settings_phone_alert_10s"

    .line 5281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 123
    :sswitch_3
    const-string v0, "item_settings_phone_alert_15s"

    .line 6281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 105
    :pswitch_data_0
    .packed-switch 0x5561b41a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 112
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
        0xf -> :sswitch_3
    .end sparse-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 132
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->b:Lcom/nut/blehunter/entity/Nut;

    const-string v1, "selected_sound"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/nut/blehunter/entity/Nut;->D:I

    .line 134
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 135
    const v0, 0x7f0d0129

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->b:Lcom/nut/blehunter/entity/Nut;

    iget v2, v2, Lcom/nut/blehunter/entity/Nut;->D:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 67
    const-string v1, "nut"

    iget-object v2, p0, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->b:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 68
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->setResult(ILandroid/content/Intent;)V

    .line 69
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->finish()V

    .line 70
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 94
    :pswitch_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->b:Lcom/nut/blehunter/entity/Nut;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_1
    iput v0, v1, Lcom/nut/blehunter/entity/Nut;->t:I

    .line 95
    const-string v0, "NTNutEvent"

    const-string v1, "NUT_SETTINGS_CHANGED"

    const-string v2, "PHONE_ALERT_RECONNECTED"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->b:Lcom/nut/blehunter/entity/Nut;

    iget v4, v4, Lcom/nut/blehunter/entity/Nut;->t:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    if-eqz p2, :cond_1

    const-string v0, "item_settings_phone_alert_reconnect_on"

    .line 2281
    :goto_2
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 97
    :cond_1
    const-string v0, "item_settings_phone_alert_reconnect_off"

    goto :goto_2

    .line 92
    :pswitch_data_0
    .packed-switch 0x7f0d012d
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_0
    :pswitch_0
    return-void

    .line 76
    :pswitch_1
    const v0, 0x7f060050

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->b:Lcom/nut/blehunter/entity/Nut;

    iget v2, v2, Lcom/nut/blehunter/entity/Nut;->u:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p0}, Lcom/nut/blehunter/ui/b/a/v;->a(Landroid/content/Context;ILjava/lang/String;Lcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/v;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "picker_number"

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/v;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/SettingAlertSoundActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    const-string v1, "selected_sound"

    iget-object v2, p0, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->b:Lcom/nut/blehunter/entity/Nut;

    iget v2, v2, Lcom/nut/blehunter/entity/Nut;->D:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    const-string v1, "device_id"

    iget-object v2, p0, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->b:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 85
    const-string v0, "item_settings_phone_alert_change_disconnect_ringtone"

    .line 1281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x7f0d0128
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 31
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->setContentView(I)V

    .line 33
    const v0, 0x7f0601ac

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->a(I)V

    .line 34
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nut"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    iput-object v0, p0, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->b:Lcom/nut/blehunter/entity/Nut;

    .line 1039
    const v0, 0x7f0d012a

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1040
    const v0, 0x7f0d0128

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1041
    const v0, 0x7f0d012b

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->a:Landroid/widget/TextView;

    .line 1043
    const v0, 0x7f0d012d

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1044
    iget-object v1, p0, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->b:Lcom/nut/blehunter/entity/Nut;

    iget v1, v1, Lcom/nut/blehunter/entity/Nut;->t:I

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1045
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1047
    iget-object v0, p0, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->b:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->u:I

    if-eqz v0, :cond_2

    .line 1048
    iget-object v0, p0, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->b:Lcom/nut/blehunter/entity/Nut;

    iget v4, v4, Lcom/nut/blehunter/entity/Nut;->u:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "s"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1054
    :goto_1
    const v0, 0x7f0601ad

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->b:Lcom/nut/blehunter/entity/Nut;

    iget-object v4, v4, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1055
    const v0, 0x7f0d012c

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    const v0, 0x7f0601ae

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->b:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1057
    const v0, 0x7f0d012e

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1059
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1060
    array-length v0, v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->b:Lcom/nut/blehunter/entity/Nut;

    iget v2, v2, Lcom/nut/blehunter/entity/Nut;->D:I

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->b:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->D:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->b:Lcom/nut/blehunter/entity/Nut;

    iget v3, v0, Lcom/nut/blehunter/entity/Nut;->D:I

    .line 1061
    :cond_0
    const v0, 0x7f0d0129

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void

    :cond_1
    move v1, v3

    .line 1044
    goto/16 :goto_0

    .line 1050
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->b:Lcom/nut/blehunter/entity/Nut;

    const/4 v1, 0x5

    iput v1, v0, Lcom/nut/blehunter/entity/Nut;->u:I

    .line 1051
    iget-object v0, p0, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;->a:Landroid/widget/TextView;

    const-string v1, "5s"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
