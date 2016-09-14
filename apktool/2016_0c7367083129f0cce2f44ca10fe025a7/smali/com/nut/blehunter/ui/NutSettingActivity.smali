.class public Lcom/nut/blehunter/ui/NutSettingActivity;
.super Lcom/nut/blehunter/ui/b;
.source "NutSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/nut/blehunter/ui/b/a/d;
.implements Lcom/nut/blehunter/ui/b/a/z;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Lcom/nut/blehunter/entity/Nut;

.field private e:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 92
    new-instance v0, Lcom/nut/blehunter/ui/ej;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/ej;-><init>(Lcom/nut/blehunter/ui/NutSettingActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->e:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/NutSettingActivity;)Lcom/nut/blehunter/entity/Nut;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    return-object v0
.end method

.method private a(Lcom/nut/blehunter/entity/Nut;)V
    .locals 3

    .prologue
    .line 622
    if-nez p1, :cond_0

    .line 644
    :goto_0
    return-void

    .line 625
    :cond_0
    const v0, 0x7f0601ab

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/nut/blehunter/ui/b/a/aa;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Z)V

    .line 626
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->c()Lcom/nut/blehunter/rxApi/service/NutService;

    move-result-object v0

    const-string v1, "tagId"

    iget-object v2, p1, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nut/blehunter/rxApi/service/NutService;->deleteNut(Ljava/util/HashMap;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/em;

    invoke-direct {v1, p0, p1}, Lcom/nut/blehunter/ui/em;-><init>(Lcom/nut/blehunter/ui/NutSettingActivity;Lcom/nut/blehunter/entity/Nut;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 7

    .prologue
    const v6, 0x7f0d0215

    const v5, 0x7f0d0214

    const/16 v0, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 225
    if-eqz p1, :cond_1

    move v2, v1

    .line 226
    :goto_0
    if-nez p1, :cond_0

    move v0, v1

    .line 227
    :cond_0
    invoke-virtual {p0, v6}, Lcom/nut/blehunter/ui/NutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 228
    const v4, 0x7f0d0216

    invoke-virtual {p0, v4}, Lcom/nut/blehunter/ui/NutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 229
    const v4, 0x7f0d0217

    invoke-virtual {p0, v4}, Lcom/nut/blehunter/ui/NutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 230
    const v4, 0x7f0d021a

    invoke-virtual {p0, v4}, Lcom/nut/blehunter/ui/NutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 231
    const v0, 0x7f0d0213

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 232
    invoke-virtual {p0, v5}, Lcom/nut/blehunter/ui/NutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 233
    if-eqz p1, :cond_2

    .line 234
    invoke-virtual {p0, v5}, Lcom/nut/blehunter/ui/NutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 242
    const-string v2, "device_id"

    iget-object v4, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v4, v4, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v2, "open_disconnect_alert"

    if-nez p1, :cond_4

    :goto_2
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    const/16 v1, 0x16

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->a(ILandroid/os/Bundle;)V

    .line 245
    return-void

    :cond_1
    move v2, v0

    .line 225
    goto :goto_0

    .line 236
    :cond_2
    invoke-virtual {p0, v6}, Lcom/nut/blehunter/ui/NutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    const v0, 0x7f0d0219

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 238
    iget-object v2, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v2, v2, Lcom/nut/blehunter/entity/Nut;->n:I

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 239
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    :cond_3
    move v2, v1

    .line 238
    goto :goto_3

    :cond_4
    move v3, v1

    .line 243
    goto :goto_2
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/NutSettingActivity;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NutSettingActivity;->c()V

    return-void
.end method

.method private c()V
    .locals 7

    .prologue
    const v6, 0x7f0d021c

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v5, 0x0

    .line 182
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    const/4 v4, 0x6

    if-ne v0, v4, :cond_3

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 185
    iput-object v5, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->b:Landroid/view/View;

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->c:Landroid/view/View;

    if-nez v0, :cond_2

    .line 188
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutSettingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009d

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->c:Landroid/view/View;

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    const v0, 0x7f0d020d

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const v0, 0x7f0d020e

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    :goto_0
    return-void

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->c:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 195
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->a:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 196
    iput-object v5, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->c:Landroid/view/View;

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->b:Landroid/view/View;

    if-nez v0, :cond_5

    .line 199
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutSettingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f03009e

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->b:Landroid/view/View;

    .line 201
    :cond_5
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->a:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    const v0, 0x7f0d0212

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 203
    iget-object v4, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v4, v4, Lcom/nut/blehunter/entity/Nut;->y:I

    if-ne v4, v1, :cond_6

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 204
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 206
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->a(Z)V

    .line 208
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/Nut;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 209
    invoke-virtual {p0, v6}, Lcom/nut/blehunter/ui/NutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v0, 0x7f0d021e

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v1

    iget-object v4, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v1, v4}, Lcom/nut/blehunter/provider/m;->a(Lcom/nut/blehunter/entity/Nut;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_6
    move v1, v2

    .line 203
    goto :goto_1

    :cond_7
    move v2, v3

    .line 210
    goto :goto_2

    .line 212
    :cond_8
    invoke-virtual {p0, v6}, Lcom/nut/blehunter/ui/NutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 213
    const v0, 0x7f0d021b

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/nut/blehunter/ui/NutSettingActivity;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NutSettingActivity;->p()V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 647
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/ShareManageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 648
    const-string v1, "nut"

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 649
    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/NutSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 650
    return-void
.end method

.method static synthetic d(Lcom/nut/blehunter/ui/NutSettingActivity;)V
    .locals 2

    .prologue
    .line 10147
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/Main2Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10148
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10149
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 65
    return-void
.end method

.method private p()V
    .locals 3

    .prologue
    .line 741
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/provider/l;->a(Lcom/nut/blehunter/entity/Nut;Z)V

    .line 742
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->e:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 111
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/aa;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 112
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "delete_result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    packed-switch v0, :pswitch_data_1

    .line 127
    :goto_1
    :pswitch_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->a(Lcom/nut/blehunter/entity/Nut;)V

    goto :goto_0

    .line 117
    :pswitch_2
    const-string v0, "item_deleted_normal"

    .line 1281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 120
    :pswitch_3
    const-string v0, "item_deleted_disconnected"

    .line 2281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 124
    :pswitch_4
    const-string v0, "item_deleted_lost"

    .line 3281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 129
    :cond_0
    const v0, 0x7f0601a3

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch

    .line 115
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 6

    .prologue
    const/16 v5, 0x11

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 528
    invoke-virtual {p1}, Landroid/support/v4/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 582
    :cond_1
    :goto_1
    return-void

    .line 528
    :sswitch_0
    const-string v4, "delete"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v4, "input_text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v4, "dfu"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "download_failed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v4, "undo_declare_lost"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v4, "change_mode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v4, "master_delete_shared"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    .line 530
    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 531
    const-string v3, "device_id"

    iget-object v4, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v4, v4, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v3, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v3, v3, Lcom/nut/blehunter/entity/Nut;->K:I

    if-ne v3, v2, :cond_2

    .line 533
    const-string v3, "is_reset"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 534
    invoke-virtual {p0, v5, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->a(ILandroid/os/Bundle;)V

    .line 535
    const v0, 0x7f0601ab

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/nut/blehunter/ui/b/a/aa;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Z)V

    .line 536
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->e:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_1

    .line 538
    :cond_2
    const-string v2, "is_reset"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 539
    invoke-virtual {p0, v5, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->a(ILandroid/os/Bundle;)V

    .line 540
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->a(Lcom/nut/blehunter/entity/Nut;)V

    goto :goto_1

    .line 545
    :pswitch_1
    check-cast p1, Lcom/nut/blehunter/ui/b/a/j;

    .line 9102
    iget-object v1, p1, Lcom/nut/blehunter/ui/b/a/j;->f:Ljava/lang/String;

    .line 546
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/l;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 547
    const v0, 0x7f060065

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 550
    :cond_3
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iput-object v1, v0, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    .line 551
    const v0, 0x7f0d00a5

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NutSettingActivity;->p()V

    goto/16 :goto_1

    .line 9465
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/dfu/DfuActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9466
    const-string v1, "nut"

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 9467
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 567
    :pswitch_3
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v1, v1, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v0

    .line 568
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    if-eqz v1, :cond_1

    .line 569
    iget v1, v0, Lcom/nut/blehunter/entity/t;->a:I

    iget-object v0, v0, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    invoke-static {p0, v1, v0, p0}, Lcom/nut/blehunter/dfu/e;->a(Landroid/support/v4/app/FragmentActivity;ILcom/nut/blehunter/entity/i;Lcom/nut/blehunter/ui/b/a/d;)V

    goto/16 :goto_1

    .line 9585
    :pswitch_4
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 9586
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iput v1, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    .line 9587
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->c()Lcom/nut/blehunter/rxApi/service/NutService;

    move-result-object v0

    const-string v1, "v3"

    const-string v2, "update"

    new-instance v3, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;

    iget-object v4, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-direct {v3, v4}, Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;-><init>(Lcom/nut/blehunter/entity/Nut;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/nut/blehunter/rxApi/service/NutService;->bindNut(Ljava/lang/String;Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/UpdateNutRequestBody;)Lrx/h;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->b(Lrx/m;)Lrx/h;

    move-result-object v0

    invoke-static {}, Lrx/a/b/a;->a()Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/m;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/el;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/el;-><init>(Lcom/nut/blehunter/ui/NutSettingActivity;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/k;)Lrx/u;

    goto/16 :goto_1

    .line 579
    :pswitch_5
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NutSettingActivity;->d()V

    goto/16 :goto_1

    .line 528
    :sswitch_data_0
    .sparse-switch
        -0x62a0532e -> :sswitch_5
        -0x4f997a55 -> :sswitch_0
        -0x48accfac -> :sswitch_4
        0x18433 -> :sswitch_2
        0x95a9fd4 -> :sswitch_3
        0x37afa65c -> :sswitch_6
        0x52a6f482 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public final c(I)V
    .locals 3

    .prologue
    .line 655
    packed-switch p1, :pswitch_data_0

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 657
    :pswitch_0
    invoke-static {p0}, Lcom/nut/blehunter/d/d;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 658
    if-eqz v0, :cond_0

    .line 661
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 662
    const-string v2, "output"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 663
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutSettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 664
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 669
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 670
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutSettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 673
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/NutSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 655
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 683
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 688
    :sswitch_0
    invoke-static {p0}, Lcom/nut/blehunter/d/k;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 692
    :sswitch_1
    invoke-static {p0, p3}, Lcom/nut/blehunter/d/k;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 693
    invoke-static {p0}, Lcom/nut/blehunter/d/k;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 695
    :cond_2
    const-string v0, "take picture from camera error"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 700
    :sswitch_2
    if-nez p3, :cond_3

    .line 701
    const-string v0, "crop image error"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 705
    :cond_3
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-static {p3}, Lcom/nut/blehunter/d/k;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nut/blehunter/entity/Nut;->i:Ljava/lang/String;

    .line 706
    const v0, 0x7f0d0093

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-static {v0, v1}, Lcom/nut/blehunter/t;->a(Landroid/widget/ImageView;Lcom/nut/blehunter/entity/Nut;)V

    .line 707
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NutSettingActivity;->p()V

    goto :goto_0

    .line 711
    :sswitch_3
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutSettingActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 714
    const-string v0, "nut"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    iput-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    .line 715
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NutSettingActivity;->p()V

    goto :goto_0

    .line 719
    :sswitch_4
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutSettingActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 722
    const-string v0, "nut"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    iput-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    goto :goto_0

    .line 725
    :sswitch_5
    if-nez p3, :cond_4

    const/4 v0, 0x0

    .line 726
    :goto_1
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->o:Lcom/nut/blehunter/entity/LosingRecord;

    if-eqz v1, :cond_0

    .line 727
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->o:Lcom/nut/blehunter/entity/LosingRecord;

    iput-object v0, v1, Lcom/nut/blehunter/entity/LosingRecord;->d:Ljava/lang/String;

    goto :goto_0

    .line 725
    :cond_4
    const-string v0, "safe_region"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 686
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xb -> :sswitch_3
        0xc -> :sswitch_4
        0xd -> :sswitch_5
        0x1a35 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 484
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 510
    :goto_0
    return-void

    .line 486
    :sswitch_0
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->A:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    const v0, 0x7f0d0212

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 6513
    const v0, 0x7f0600a8

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6514
    const v3, 0x7f0600dc

    invoke-virtual {p0, v3}, Lcom/nut/blehunter/ui/NutSettingActivity;->getString(I)Ljava/lang/String;

    .line 6515
    new-instance v3, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v3, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/b/a/b;->b(Ljava/lang/String;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    const v1, 0x7f06008e

    invoke-virtual {v0, v1, p0}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    const v1, 0x7f060083

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    const-string v1, "change_mode"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 491
    :cond_0
    iget-object v3, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    iput v0, v3, Lcom/nut/blehunter/entity/Nut;->y:I

    .line 492
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NutSettingActivity;->p()V

    .line 493
    invoke-direct {p0, p2}, Lcom/nut/blehunter/ui/NutSettingActivity;->a(Z)V

    .line 494
    if-eqz p2, :cond_2

    const-string v0, "item_settings_mode_find_on"

    .line 7281
    :goto_2
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 491
    goto :goto_1

    .line 494
    :cond_2
    const-string v0, "item_settings_mode_find_off"

    goto :goto_2

    .line 498
    :sswitch_1
    iget-object v3, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    if-eqz p2, :cond_3

    move v0, v1

    :goto_3
    iput v0, v3, Lcom/nut/blehunter/entity/Nut;->n:I

    .line 499
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 500
    const-string v3, "device_id"

    iget-object v4, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v4, v4, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    if-eqz p2, :cond_4

    iget-object v3, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v3, p0}, Lcom/nut/blehunter/entity/Nut;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 502
    :goto_4
    const-string v2, "open_disconnect_alert"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 503
    const/16 v1, 0x16

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->a(ILandroid/os/Bundle;)V

    .line 504
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NutSettingActivity;->p()V

    .line 505
    if-eqz p2, :cond_5

    const-string v0, "item_settings_nut_alert_on"

    .line 8281
    :goto_5
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 506
    const-string v0, "NTNutEvent"

    const-string v1, "NUT_SETTINGS_CHANGED"

    const-string v2, "NUT_ALERT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v4, v4, Lcom/nut/blehunter/entity/Nut;->n:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 498
    goto :goto_3

    :cond_4
    move v1, v2

    .line 501
    goto :goto_4

    .line 505
    :cond_5
    const-string v0, "item_settings_nut_alert_off"

    goto :goto_5

    .line 484
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0212 -> :sswitch_0
        0x7f0d0219 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v1, 0x2

    const v6, 0x7f060083

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 263
    :sswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-boolean v0, v0, Lcom/nut/blehunter/entity/Nut;->E:Z

    if-eqz v0, :cond_0

    .line 267
    invoke-static {}, Lcom/nut/blehunter/ui/b/a/y;->a()Lcom/nut/blehunter/ui/b/a/y;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "pick_photo"

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/y;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :sswitch_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-boolean v0, v0, Lcom/nut/blehunter/entity/Nut;->E:Z

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    invoke-static {p0, v0, p0}, Lcom/nut/blehunter/ui/b/a/j;->a(Landroid/content/Context;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/j;

    move-result-object v0

    const-string v1, "input_text"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/j;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/PhoneAlertSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    const-string v1, "nut"

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 283
    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/NutSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 287
    :sswitch_3
    invoke-static {p0}, Lcom/nut/blehunter/d/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    const v0, 0x7f0601e4

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 291
    :cond_1
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/l;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v1, v1, Lcom/nut/blehunter/entity/Nut;->y:I

    if-ne v1, v3, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 4346
    const v0, 0x7f0600ac

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/NutSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4347
    new-instance v1, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    const v2, 0x7f06008e

    invoke-virtual {v1, v2, p0}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    const v2, 0x7f060084

    invoke-virtual {v1, v2, v5}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    .line 4352
    iget-object v2, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-static {v2, v0, v1}, Lcom/nut/blehunter/ui/b/a/g;->a(Lcom/nut/blehunter/entity/Nut;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/b;)Lcom/nut/blehunter/ui/b/a/g;

    move-result-object v0

    const-string v1, "master_delete_shared"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/g;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    if-ne v0, v3, :cond_3

    .line 4357
    const v0, 0x7f0600ab

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/NutSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4358
    const v1, 0x7f0600de

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/NutSettingActivity;->getString(I)Ljava/lang/String;

    .line 4359
    new-instance v1, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    const v2, 0x7f060086

    invoke-virtual {v1, v2, p0}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    invoke-virtual {v1, v6, v5}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    .line 4364
    iget-object v2, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-static {v2, v0, v1}, Lcom/nut/blehunter/ui/b/a/g;->a(Lcom/nut/blehunter/entity/Nut;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/b;)Lcom/nut/blehunter/ui/b/a/g;

    move-result-object v0

    const-string v1, "delete"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/g;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4369
    :cond_3
    const v0, 0x7f0600a9

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/NutSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4370
    const v1, 0x7f0600de

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/NutSettingActivity;->getString(I)Ljava/lang/String;

    .line 4371
    new-instance v1, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    const v2, 0x7f060086

    invoke-virtual {v1, v2, p0}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    invoke-virtual {v1, v6, v5}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    .line 4376
    iget-object v2, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-static {v2, v0, v1}, Lcom/nut/blehunter/ui/b/a/g;->a(Lcom/nut/blehunter/entity/Nut;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/b;)Lcom/nut/blehunter/ui/b/a/g;

    move-result-object v0

    const-string v1, "delete"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/g;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 304
    :sswitch_4
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    if-nez v0, :cond_0

    .line 4381
    :cond_4
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v1, v1, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v0

    .line 4382
    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    if-nez v1, :cond_6

    .line 306
    :cond_5
    :goto_1
    const-string v0, "NTDFUEvent"

    const-string v1, "ENTRY_TAPPED"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4386
    :cond_6
    :try_start_0
    iget-object v1, v0, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    iget-object v1, v1, Lcom/nut/blehunter/entity/i;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->v:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v1, v2, :cond_8

    .line 4388
    iget-object v1, v0, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    iget-object v1, v1, Lcom/nut/blehunter/entity/i;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    iget-object v2, v2, Lcom/nut/blehunter/entity/i;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4390
    iget-object v0, v0, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    iget-object v0, v0, Lcom/nut/blehunter/entity/i;->c:Ljava/lang/String;

    invoke-static {p0, v0, p0}, Lcom/nut/blehunter/dfu/e;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/d;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 4458
    :catch_0
    move-exception v0

    const-string v1, "format firmware version exception"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, La/a/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 4392
    :cond_7
    :try_start_1
    iget v1, v0, Lcom/nut/blehunter/entity/t;->a:I

    iget-object v0, v0, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    invoke-static {p0, v1, v0, p0}, Lcom/nut/blehunter/dfu/e;->a(Landroid/support/v4/app/FragmentActivity;ILcom/nut/blehunter/entity/i;Lcom/nut/blehunter/ui/b/a/d;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 4460
    :catch_1
    move-exception v0

    const-string v1, "open asset directory error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, La/a/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 4413
    :cond_8
    :try_start_2
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 4414
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->c()Lcom/nut/blehunter/rxApi/service/NutService;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/rxApi/model/CheckFirmwareVersionRequestBody;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v3, v3, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v3, v3, Lcom/nut/blehunter/entity/Nut;->v:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/nut/blehunter/rxApi/model/CheckFirmwareVersionRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/nut/blehunter/rxApi/service/NutService;->checkFirmwareVersion(Lcom/nut/blehunter/rxApi/model/CheckFirmwareVersionRequestBody;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/ek;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/ek;-><init>(Lcom/nut/blehunter/ui/NutSettingActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 311
    :sswitch_5
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NutSettingActivity;->d()V

    .line 312
    const-string v0, "find_mode_share_management"

    .line 5281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5340
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/FindRegionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5341
    const-string v1, "nut"

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5342
    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/NutSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 5471
    :sswitch_7
    const v0, 0x7f0600d3

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/NutSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5472
    const v1, 0x7f0600f1

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/NutSettingActivity;->getString(I)Ljava/lang/String;

    .line 5473
    new-instance v1, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    const v2, 0x7f060094

    invoke-virtual {v1, v2, p0}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    invoke-virtual {v1, v6, v5}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    .line 5478
    iget-object v2, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-static {v2, v0, v1}, Lcom/nut/blehunter/ui/b/a/x;->b(Lcom/nut/blehunter/entity/Nut;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/b;)Lcom/nut/blehunter/ui/b/a/x;

    move-result-object v0

    const-string v1, "undo_declare_lost"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/x;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 324
    :sswitch_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/JumpWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nut/blehunter/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget v2, v2, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    const-string v2, "URL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 328
    const-string v0, "hot_questions"

    .line 6281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 332
    :sswitch_9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/NutConfigActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 333
    const-string v1, "nut"

    iget-object v2, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 334
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 261
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0093 -> :sswitch_0
        0x7f0d0127 -> :sswitch_1
        0x7f0d020d -> :sswitch_6
        0x7f0d020e -> :sswitch_7
        0x7f0d020f -> :sswitch_8
        0x7f0d0210 -> :sswitch_3
        0x7f0d0214 -> :sswitch_5
        0x7f0d0215 -> :sswitch_2
        0x7f0d021c -> :sswitch_4
        0x7f0d021f -> :sswitch_9
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutSettingActivity;->e()V

    .line 156
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->setContentView(I)V

    .line 157
    const v0, 0x7f06003b

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->a(I)V

    .line 158
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nut"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    iput-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    .line 4165
    :cond_0
    const v0, 0x7f0d0126

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->a:Landroid/widget/LinearLayout;

    .line 4166
    const v0, 0x7f0d0093

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;

    .line 4167
    iget-object v1, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-static {v0, v1}, Lcom/nut/blehunter/t;->a(Landroid/widget/ImageView;Lcom/nut/blehunter/entity/Nut;)V

    .line 4169
    const v1, 0x7f0d00a5

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/NutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4170
    iget-object v2, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4171
    const v1, 0x7f0d0127

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/NutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4172
    invoke-virtual {v0, p0}, Lcom/nut/blehunter/ui/widget/ShadowCircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4174
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NutSettingActivity;->c()V

    .line 4176
    const v0, 0x7f0d020f

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4177
    const v0, 0x7f0d0210

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->e:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 736
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ui/NutSettingActivity;->e:Landroid/os/CountDownTimer;

    .line 737
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onDestroy()V

    .line 738
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 249
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onStart()V

    .line 250
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutSettingActivity;->f()V

    .line 251
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NutSettingActivity;->g()V

    .line 256
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onStop()V

    .line 257
    return-void
.end method
