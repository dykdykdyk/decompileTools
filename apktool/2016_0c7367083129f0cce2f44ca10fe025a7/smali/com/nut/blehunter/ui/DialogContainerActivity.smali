.class public Lcom/nut/blehunter/ui/DialogContainerActivity;
.super Landroid/support/v7/a/s;
.source "DialogContainerActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/a/e;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v7/a/s;-><init>()V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 87
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v0

    .line 89
    :try_start_0
    iget-object v1, v0, Lcom/nut/blehunter/entity/t;->b:Lcom/nut/blehunter/entity/e;

    iget v1, v1, Lcom/nut/blehunter/entity/e;->b:I

    if-eq v1, v2, :cond_0

    .line 90
    iget-object v1, v0, Lcom/nut/blehunter/entity/t;->b:Lcom/nut/blehunter/entity/e;

    iget-object v1, v1, Lcom/nut/blehunter/entity/e;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    const v1, 0x7f06018b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/nut/blehunter/entity/t;->b:Lcom/nut/blehunter/entity/e;

    iget-object v0, v0, Lcom/nut/blehunter/entity/e;->c:Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/ui/DialogContainerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 95
    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0

    .line 97
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private a(Lcom/nut/blehunter/entity/Nut;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 123
    if-eqz p2, :cond_0

    .line 124
    const v0, 0x7f0600b6

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/DialogContainerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-direct {p0, v2}, Lcom/nut/blehunter/ui/DialogContainerActivity;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v1, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03005f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(Landroid/view/View;)Lcom/nut/blehunter/ui/b/a/b;

    .line 133
    invoke-virtual {v1, p0}, Lcom/nut/blehunter/ui/b/a/b;->a(Lcom/nut/blehunter/ui/b/a/e;)Lcom/nut/blehunter/ui/b/a/b;

    .line 134
    invoke-virtual {v1, v5}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 135
    invoke-virtual {v1, v6}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 136
    const v2, 0x7f060087

    new-instance v3, Lcom/nut/blehunter/ui/ah;

    invoke-direct {v3, p0, p1}, Lcom/nut/blehunter/ui/ah;-><init>(Lcom/nut/blehunter/ui/DialogContainerActivity;Lcom/nut/blehunter/entity/Nut;)V

    invoke-virtual {v1, v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 147
    const v2, 0x7f06008c

    new-instance v3, Lcom/nut/blehunter/ui/ai;

    invoke-direct {v3, p0}, Lcom/nut/blehunter/ui/ai;-><init>(Lcom/nut/blehunter/ui/DialogContainerActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 154
    invoke-static {p1, v0, v1}, Lcom/nut/blehunter/ui/b/a/x;->b(Lcom/nut/blehunter/entity/Nut;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/b;)Lcom/nut/blehunter/ui/b/a/x;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p1, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/x;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 156
    return-void

    .line 126
    :cond_0
    const v0, 0x7f0600b7

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/DialogContainerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/DialogContainerActivity;)Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/DialogContainerActivity;->a:Z

    return v0
.end method


# virtual methods
.method public final c_()V
    .locals 3

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/DialogContainerActivity;->a:Z

    if-eqz v0, :cond_0

    .line 307
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.nutspace.action.stop.play.sound"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->finish()V

    .line 311
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f06008c

    const v6, 0x7f03005f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/support/v7/a/s;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 45
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "nut"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    .line 46
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->finish()V

    .line 84
    :goto_0
    return-void

    .line 50
    :cond_1
    iput-boolean v4, p0, Lcom/nut/blehunter/ui/DialogContainerActivity;->a:Z

    .line 51
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1101
    :pswitch_0
    const v1, 0x7f0600c8

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/ui/DialogContainerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-direct {p0, v3}, Lcom/nut/blehunter/ui/DialogContainerActivity;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1103
    new-instance v2, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v2, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 1104
    const v3, 0x7f0600ed

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 1105
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(Landroid/view/View;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1107
    invoke-virtual {v2, p0}, Lcom/nut/blehunter/ui/b/a/b;->a(Lcom/nut/blehunter/ui/b/a/e;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1108
    invoke-virtual {v2, v4}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1109
    invoke-virtual {v2, v5}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1110
    new-instance v3, Lcom/nut/blehunter/ui/af;

    invoke-direct {v3, p0}, Lcom/nut/blehunter/ui/af;-><init>(Lcom/nut/blehunter/ui/DialogContainerActivity;)V

    invoke-virtual {v2, v7, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1117
    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/x;->b(Lcom/nut/blehunter/entity/Nut;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/b;)Lcom/nut/blehunter/ui/b/a/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/nut/blehunter/ui/b/a/x;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :pswitch_1
    invoke-direct {p0, v0, v4}, Lcom/nut/blehunter/ui/DialogContainerActivity;->a(Lcom/nut/blehunter/entity/Nut;Z)V

    goto :goto_0

    .line 61
    :pswitch_2
    invoke-direct {p0, v0, v5}, Lcom/nut/blehunter/ui/DialogContainerActivity;->a(Lcom/nut/blehunter/entity/Nut;Z)V

    goto :goto_0

    .line 1159
    :pswitch_3
    const v1, 0x7f0600c2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/ui/DialogContainerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1160
    new-instance v2, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v2, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 1161
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(Landroid/view/View;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1163
    invoke-virtual {v2, p0}, Lcom/nut/blehunter/ui/b/a/b;->a(Lcom/nut/blehunter/ui/b/a/e;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1164
    invoke-virtual {v2, v4}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1165
    invoke-virtual {v2, v5}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1166
    new-instance v3, Lcom/nut/blehunter/ui/aj;

    invoke-direct {v3, p0}, Lcom/nut/blehunter/ui/aj;-><init>(Lcom/nut/blehunter/ui/DialogContainerActivity;)V

    invoke-virtual {v2, v7, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1173
    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/x;->b(Lcom/nut/blehunter/entity/Nut;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/b;)Lcom/nut/blehunter/ui/b/a/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/nut/blehunter/ui/b/a/x;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1178
    :pswitch_4
    const v1, 0x7f0600bc

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/ui/DialogContainerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-direct {p0, v3}, Lcom/nut/blehunter/ui/DialogContainerActivity;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1180
    new-instance v2, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v2, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 1181
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(Landroid/view/View;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1183
    invoke-virtual {v2, p0}, Lcom/nut/blehunter/ui/b/a/b;->a(Lcom/nut/blehunter/ui/b/a/e;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1184
    invoke-virtual {v2, v4}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1185
    invoke-virtual {v2, v5}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1196
    new-instance v3, Lcom/nut/blehunter/ui/ak;

    invoke-direct {v3, p0, v0}, Lcom/nut/blehunter/ui/ak;-><init>(Lcom/nut/blehunter/ui/DialogContainerActivity;Lcom/nut/blehunter/entity/Nut;)V

    invoke-virtual {v2, v7, v3}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1210
    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/x;->b(Lcom/nut/blehunter/entity/Nut;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/b;)Lcom/nut/blehunter/ui/b/a/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/nut/blehunter/ui/b/a/x;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1215
    :pswitch_5
    const v1, 0x7f0600a5

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/ui/DialogContainerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-direct {p0, v3}, Lcom/nut/blehunter/ui/DialogContainerActivity;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1217
    new-instance v2, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v2, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 1218
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(Landroid/view/View;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1220
    invoke-virtual {v2, p0}, Lcom/nut/blehunter/ui/b/a/b;->a(Lcom/nut/blehunter/ui/b/a/e;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1221
    invoke-virtual {v2, v4}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1222
    invoke-virtual {v2, v5}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1223
    new-instance v3, Lcom/nut/blehunter/ui/al;

    invoke-direct {v3, p0}, Lcom/nut/blehunter/ui/al;-><init>(Lcom/nut/blehunter/ui/DialogContainerActivity;)V

    invoke-virtual {v2, v7, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1236
    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/x;->b(Lcom/nut/blehunter/entity/Nut;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/b;)Lcom/nut/blehunter/ui/b/a/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/nut/blehunter/ui/b/a/x;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1241
    :pswitch_6
    const v1, 0x7f0600c4

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/ui/DialogContainerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-direct {p0, v3}, Lcom/nut/blehunter/ui/DialogContainerActivity;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1243
    new-instance v2, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v2, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 1244
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(Landroid/view/View;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1246
    invoke-virtual {v2, p0}, Lcom/nut/blehunter/ui/b/a/b;->a(Lcom/nut/blehunter/ui/b/a/e;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1247
    invoke-virtual {v2, v4}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1248
    invoke-virtual {v2, v5}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1249
    const v3, 0x7f060090

    new-instance v4, Lcom/nut/blehunter/ui/am;

    invoke-direct {v4, p0}, Lcom/nut/blehunter/ui/am;-><init>(Lcom/nut/blehunter/ui/DialogContainerActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1261
    new-instance v3, Lcom/nut/blehunter/ui/an;

    invoke-direct {v3, p0}, Lcom/nut/blehunter/ui/an;-><init>(Lcom/nut/blehunter/ui/DialogContainerActivity;)V

    invoke-virtual {v2, v7, v3}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1268
    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/x;->b(Lcom/nut/blehunter/entity/Nut;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/b;)Lcom/nut/blehunter/ui/b/a/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/nut/blehunter/ui/b/a/x;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1273
    :pswitch_7
    const v1, 0x7f0600c5

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/ui/DialogContainerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1274
    new-instance v2, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v2, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 1275
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(Landroid/view/View;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1277
    invoke-virtual {v2, p0}, Lcom/nut/blehunter/ui/b/a/b;->a(Lcom/nut/blehunter/ui/b/a/e;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1278
    invoke-virtual {v2, v4}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1279
    invoke-virtual {v2, v5}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1280
    new-instance v3, Lcom/nut/blehunter/ui/ao;

    invoke-direct {v3, p0}, Lcom/nut/blehunter/ui/ao;-><init>(Lcom/nut/blehunter/ui/DialogContainerActivity;)V

    invoke-virtual {v2, v7, v3}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1288
    const v3, 0x7f060089

    new-instance v4, Lcom/nut/blehunter/ui/ag;

    invoke-direct {v4, p0, v0}, Lcom/nut/blehunter/ui/ag;-><init>(Lcom/nut/blehunter/ui/DialogContainerActivity;Lcom/nut/blehunter/entity/Nut;)V

    invoke-virtual {v2, v3, v4}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1300
    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/x;->b(Lcom/nut/blehunter/entity/Nut;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/b;)Lcom/nut/blehunter/ui/b/a/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/nut/blehunter/ui/b/a/x;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_7
    .end packed-switch
.end method
