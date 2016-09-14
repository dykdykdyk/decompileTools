.class public Lcom/nut/blehunter/ui/b/w;
.super Lcom/nut/blehunter/ui/b/h;
.source "MoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/nut/blehunter/ui/widget/CircleImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/CheckBox;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/nut/blehunter/ui/b/w;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nut/blehunter/ui/b/w;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/h;-><init>()V

    .line 73
    return-void
.end method

.method public static a()Lcom/nut/blehunter/ui/b/w;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/nut/blehunter/ui/b/w;

    invoke-direct {v0}, Lcom/nut/blehunter/ui/b/w;-><init>()V

    .line 77
    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 131
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    .line 132
    if-nez v1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, v1, Lcom/nut/blehunter/entity/User;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    .line 136
    :goto_1
    iget-object v2, p0, Lcom/nut/blehunter/ui/b/w;->b:Lcom/nut/blehunter/ui/widget/CircleImageView;

    invoke-static {v2, v0}, Lcom/nut/blehunter/t;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcom/nut/blehunter/ui/b/w;->c:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/nut/blehunter/entity/User;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, v1, Lcom/nut/blehunter/entity/User;->e:Ljava/lang/String;

    const-string v2, "https://"

    const-string v3, "http://"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 137
    :cond_2
    iget-object v0, v1, Lcom/nut/blehunter/entity/User;->b:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const/16 v4, 0x10

    const/16 v3, 0xf

    const/16 v2, 0xc

    .line 180
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/w;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/Main2Activity;

    .line 181
    if-nez v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v6

    .line 185
    if-eqz v6, :cond_0

    .line 188
    const/4 v5, 0x0

    .line 189
    const/4 v1, -0x1

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 245
    :goto_1
    :pswitch_0
    if-eqz v5, :cond_0

    .line 5252
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v6

    .line 5253
    if-eqz v6, :cond_0

    .line 5257
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5258
    if-ne v3, v1, :cond_3

    .line 5259
    const-class v2, Lcom/nut/blehunter/ui/JumpWebViewActivity;

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nut/blehunter/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v6, Lcom/nut/blehunter/entity/User;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5261
    const-string v2, "URL"

    invoke-virtual {v7, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5269
    :cond_2
    :goto_2
    invoke-virtual {p0, v7, v1}, Lcom/nut/blehunter/ui/b/w;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 194
    :pswitch_1
    const-class v5, Lcom/nut/blehunter/ui/MeEditActivity;

    .line 195
    const/16 v1, 0xb

    .line 196
    goto :goto_1

    .line 198
    :pswitch_2
    const-class v1, Lcom/nut/blehunter/ui/JumpWebViewActivity;

    move-object v5, v1

    move v1, v2

    .line 200
    goto :goto_1

    .line 203
    :pswitch_3
    const-class v5, Lcom/nut/blehunter/ui/NotDisturbSettingActivity;

    .line 204
    const/16 v1, 0xd

    .line 205
    goto :goto_1

    .line 208
    :pswitch_4
    const-class v5, Lcom/nut/blehunter/ui/FriendManageActivity;

    .line 209
    const/16 v1, 0xe

    .line 210
    goto :goto_1

    .line 213
    :pswitch_5
    const-class v1, Lcom/nut/blehunter/ui/JumpWebViewActivity;

    .line 215
    const-string v5, "app_settings_official_store"

    .line 2281
    invoke-static {v0, v5}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    move-object v5, v1

    move v1, v3

    .line 216
    goto :goto_1

    .line 219
    :pswitch_6
    const-class v1, Lcom/nut/blehunter/ui/JumpWebViewActivity;

    .line 221
    const-string v5, "app_settings_feedback"

    .line 3281
    invoke-static {v0, v5}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    move-object v5, v1

    move v1, v4

    .line 222
    goto :goto_1

    .line 225
    :pswitch_7
    const-class v5, Lcom/nut/blehunter/ui/AboutNutActivity;

    .line 226
    const/16 v1, 0x11

    .line 227
    goto :goto_1

    .line 230
    :pswitch_8
    const v7, 0x7f0601bc

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v6, v6, Lcom/nut/blehunter/entity/User;->b:Ljava/lang/String;

    aput-object v6, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/nut/blehunter/ui/b/w;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 231
    invoke-virtual {v0, v6}, Lcom/nut/blehunter/ui/Main2Activity;->b(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/w;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string v7, "more_share_nut"

    .line 4281
    invoke-static {v6, v7}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 236
    :pswitch_9
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/nut/blehunter/ui/LogActivity;

    invoke-direct {v6, v0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/nut/blehunter/ui/b/w;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 240
    :pswitch_a
    const-class v5, Lcom/nut/blehunter/ui/AppConfigActivity;

    .line 241
    const/16 v1, 0x14

    goto/16 :goto_1

    .line 5262
    :cond_3
    if-ne v4, v1, :cond_4

    .line 5263
    const-class v2, Lcom/nut/blehunter/ui/JumpWebViewActivity;

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5264
    const-string v0, "URL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/nut/blehunter/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Lcom/nut/blehunter/entity/User;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 5265
    :cond_4
    if-ne v2, v1, :cond_2

    .line 5266
    const-class v2, Lcom/nut/blehunter/ui/JumpWebViewActivity;

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5267
    const-string v0, "URL"

    sget-object v2, Lcom/nut/blehunter/a;->l:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d01a4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const v4, 0x7f0d01ac

    const v3, 0x7f0d01a6

    const v2, 0x7f0d01a5

    .line 83
    const v0, 0x7f030070

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1091
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/widget/CircleImageView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/w;->b:Lcom/nut/blehunter/ui/widget/CircleImageView;

    .line 1092
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/w;->c:Landroid/widget/TextView;

    .line 1094
    const v0, 0x7f0d01ad

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/w;->g:Landroid/view/View;

    .line 1095
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/w;->h:Landroid/widget/TextView;

    .line 1097
    const v0, 0x7f0d01a7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/w;->e:Landroid/widget/ImageView;

    .line 1098
    const v0, 0x7f0d01a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/w;->d:Landroid/widget/ImageView;

    .line 1100
    const v0, 0x7f0d01b2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/w;->f:Landroid/widget/CheckBox;

    .line 1102
    const v0, 0x7f0d01a4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1103
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1104
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1105
    const v0, 0x7f0d01ab

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1106
    const v0, 0x7f0d01aa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1107
    const v0, 0x7f0d01a8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1108
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1109
    const v0, 0x7f0d01ae

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1110
    const v0, 0x7f0d01af

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1111
    const v0, 0x7f0d01b0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1113
    const v0, 0x7f0d01b3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1114
    const v0, 0x7f0d01b4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/w;->b()V

    .line 86
    return-object v1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    invoke-super {p0}, Lcom/nut/blehunter/ui/b/h;->onResume()V

    .line 172
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/w;->b()V

    .line 1141
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/l;->i()Ljava/util/List;

    move-result-object v0

    .line 1142
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1144
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    .line 1145
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v6

    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-virtual {v6, v0}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v0

    .line 1146
    if-eqz v0, :cond_a

    .line 1147
    iget v0, v0, Lcom/nut/blehunter/entity/t;->l:I

    if-ne v0, v3, :cond_0

    move v0, v3

    :goto_1
    or-int/2addr v0, v1

    :goto_2
    move v1, v0

    .line 1149
    goto :goto_0

    :cond_0
    move v0, v2

    .line 1147
    goto :goto_1

    .line 1150
    :cond_1
    iget-object v5, p0, Lcom/nut/blehunter/ui/b/w;->h:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    move v0, v2

    :goto_3
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1151
    iget-object v5, p0, Lcom/nut/blehunter/ui/b/w;->g:Landroid/view/View;

    if-eqz v1, :cond_5

    move v0, v2

    :goto_4
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1161
    :cond_2
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 1162
    if-eqz v0, :cond_3

    .line 1165
    invoke-virtual {v0}, Lcom/nut/blehunter/entity/User;->i()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/User;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    .line 1166
    :goto_5
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/w;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    move v0, v2

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2156
    :cond_3
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/w;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_8

    .line 2157
    :goto_7
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/w;->d:Landroid/widget/ImageView;

    if-eqz v3, :cond_9

    :goto_8
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    return-void

    :cond_4
    move v0, v4

    .line 1150
    goto :goto_3

    :cond_5
    move v0, v4

    .line 1151
    goto :goto_4

    :cond_6
    move v0, v2

    .line 1165
    goto :goto_5

    :cond_7
    move v0, v4

    .line 1166
    goto :goto_6

    :cond_8
    move v3, v2

    .line 2156
    goto :goto_7

    :cond_9
    move v2, v4

    .line 2157
    goto :goto_8

    :cond_a
    move v0, v1

    goto :goto_2
.end method
