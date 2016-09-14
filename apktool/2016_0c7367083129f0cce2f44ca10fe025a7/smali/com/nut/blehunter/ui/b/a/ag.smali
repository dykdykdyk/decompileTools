.class public final Lcom/nut/blehunter/ui/b/a/ag;
.super Landroid/app/DialogFragment;
.source "UserRatingDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/nut/blehunter/ui/b/a/ah;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 217
    return-void
.end method

.method public static a(ILjava/lang/String;)Lcom/nut/blehunter/ui/b/a/ag;
    .locals 3

    .prologue
    .line 55
    sput p0, Lcom/nut/blehunter/ui/b/a/ag;->a:I

    .line 56
    sput-object p1, Lcom/nut/blehunter/ui/b/a/ag;->b:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/nut/blehunter/ui/b/a/ag;

    invoke-direct {v0}, Lcom/nut/blehunter/ui/b/a/ag;-><init>()V

    .line 58
    const/4 v1, 0x2

    const v2, 0x7f0800d5

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/ag;->setStyle(II)V

    .line 59
    return-object v0
.end method


# virtual methods
.method public final onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 65
    check-cast p1, Lcom/nut/blehunter/ui/b/a/ah;

    iput-object p1, p0, Lcom/nut/blehunter/ui/b/a/ag;->f:Lcom/nut/blehunter/ui/b/a/ah;

    .line 66
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    .line 161
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/ag;->dismissAllowingStateLoss()V

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 193
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ag;->f:Lcom/nut/blehunter/ui/b/a/ah;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ag;->f:Lcom/nut/blehunter/ui/b/a/ah;

    invoke-interface {v0}, Lcom/nut/blehunter/ui/b/a/ah;->c()V

    .line 196
    :cond_1
    return-void

    .line 164
    :pswitch_0
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_2

    .line 166
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/ag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/nut/blehunter/ui/JumpWebViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    const-string v2, "URL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/nut/blehunter/a;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->i:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/b/a/ag;->startActivity(Landroid/content/Intent;)V

    .line 170
    :cond_2
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/ag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1185
    const-string v1, "user_rating_pop_time"

    invoke-static {v0, v1, v6, v7}, Lcom/nut/blehunter/d/l;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 171
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ag;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/ag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a/ag;->c:Ljava/lang/String;

    .line 1281
    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2200
    :pswitch_1
    :try_start_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/ag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2201
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2202
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "market://details?id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2203
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/ag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2204
    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/b/a/ag;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/ag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3185
    const-string v1, "user_rating_pop_time"

    invoke-static {v0, v1, v6, v7}, Lcom/nut/blehunter/d/l;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 179
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ag;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/ag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a/ag;->d:Ljava/lang/String;

    .line 3281
    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2206
    :cond_4
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://play.google.com/store/apps/details?id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2207
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/ag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2208
    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/b/a/ag;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2213
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 185
    :pswitch_2
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/ag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 4178
    const-string v1, "user_rating_cancel"

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 4179
    add-int/lit8 v1, v1, 0x1

    .line 4180
    const-string v2, "user_rating_cancel"

    invoke-static {v0, v2, v1}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 185
    const/4 v0, 0x3

    if-ne v1, v0, :cond_5

    .line 186
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/ag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 4185
    const-string v1, "user_rating_pop_time"

    invoke-static {v0, v1, v6, v7}, Lcom/nut/blehunter/d/l;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 188
    :cond_5
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ag;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/ag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a/ag;->e:Ljava/lang/String;

    .line 4281
    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0198
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 80
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 81
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 82
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 83
    const v2, 0x7f0800d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 84
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 85
    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 86
    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const v8, 0x7f0d0198

    const v7, 0x7f0d0197

    const v2, 0x7f0601f6

    const v0, 0x7f0601f5

    const v1, 0x7f0601f4

    .line 91
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/ag;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030069

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 92
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v3, 0x7f0d0199

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v3, 0x7f0d019a

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    sget v3, Lcom/nut/blehunter/ui/b/a/ag;->a:I

    packed-switch v3, :pswitch_data_0

    move v3, v2

    move v2, v1

    move v1, v0

    .line 139
    :goto_0
    sget-object v0, Lcom/nut/blehunter/ui/b/a/ag;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 145
    :goto_1
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 146
    const v0, 0x7f0d0199

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 147
    const v0, 0x7f0d019a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0601f3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 148
    return-object v4

    .line 101
    :pswitch_0
    const-string v3, "review_stop_beep_complain"

    iput-object v3, p0, Lcom/nut/blehunter/ui/b/a/ag;->c:Ljava/lang/String;

    .line 102
    const-string v3, "review_stop_beep_favorable"

    iput-object v3, p0, Lcom/nut/blehunter/ui/b/a/ag;->d:Ljava/lang/String;

    .line 103
    const-string v3, "review_stop_beep_ignore"

    iput-object v3, p0, Lcom/nut/blehunter/ui/b/a/ag;->e:Ljava/lang/String;

    move v3, v2

    move v2, v1

    move v1, v0

    .line 104
    goto :goto_0

    .line 107
    :pswitch_1
    const v2, 0x7f0601f2

    .line 108
    const v1, 0x7f0601f0

    .line 109
    const v0, 0x7f0601f1

    .line 110
    const-string v3, "review_find_phone_complain"

    iput-object v3, p0, Lcom/nut/blehunter/ui/b/a/ag;->c:Ljava/lang/String;

    .line 111
    const-string v3, "review_find_phone_favorable"

    iput-object v3, p0, Lcom/nut/blehunter/ui/b/a/ag;->d:Ljava/lang/String;

    .line 112
    const-string v3, "review_find_phone_ignore"

    iput-object v3, p0, Lcom/nut/blehunter/ui/b/a/ag;->e:Ljava/lang/String;

    move v3, v2

    move v2, v1

    move v1, v0

    .line 113
    goto :goto_0

    .line 116
    :pswitch_2
    const v2, 0x7f0601fc

    .line 117
    const v1, 0x7f0601fa

    .line 118
    const v0, 0x7f0601fb

    .line 119
    const-string v3, "review_reconnect_lost_complain"

    iput-object v3, p0, Lcom/nut/blehunter/ui/b/a/ag;->c:Ljava/lang/String;

    .line 120
    const-string v3, "review_reconnect_lost_favorable"

    iput-object v3, p0, Lcom/nut/blehunter/ui/b/a/ag;->d:Ljava/lang/String;

    .line 121
    const-string v3, "review_reconnect_lost_ignore"

    iput-object v3, p0, Lcom/nut/blehunter/ui/b/a/ag;->e:Ljava/lang/String;

    move v3, v2

    move v2, v1

    move v1, v0

    .line 122
    goto :goto_0

    .line 125
    :pswitch_3
    const v2, 0x7f0601f9

    .line 126
    const v1, 0x7f0601f7

    .line 127
    const v0, 0x7f0601f8

    .line 128
    const-string v3, "review_locate_friend_success_complain"

    iput-object v3, p0, Lcom/nut/blehunter/ui/b/a/ag;->c:Ljava/lang/String;

    .line 129
    const-string v3, "review_locate_friend_success_favorable"

    iput-object v3, p0, Lcom/nut/blehunter/ui/b/a/ag;->d:Ljava/lang/String;

    .line 130
    const-string v3, "review_locate_friend_success_ignore"

    iput-object v3, p0, Lcom/nut/blehunter/ui/b/a/ag;->e:Ljava/lang/String;

    move v3, v2

    move v2, v1

    move v1, v0

    .line 131
    goto/16 :goto_0

    .line 142
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/nut/blehunter/ui/b/a/ag;->b:Ljava/lang/String;

    aput-object v6, v0, v5

    invoke-virtual {p0, v3, v0}, Lcom/nut/blehunter/ui/b/a/ag;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 154
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ag;->f:Lcom/nut/blehunter/ui/b/a/ah;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ag;->f:Lcom/nut/blehunter/ui/b/a/ah;

    invoke-interface {v0}, Lcom/nut/blehunter/ui/b/a/ah;->c()V

    .line 157
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 3

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 71
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/ag;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/ag;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method
