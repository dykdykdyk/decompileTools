.class public Lcom/nut/blehunter/ui/DialogBoxForPushActivity;
.super Landroid/support/v7/a/s;
.source "DialogBoxForPushActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/a/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v7/a/s;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/DialogBoxForPushActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1315
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/Main2Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1316
    const-string v1, "com.nutspace.action.resume.main"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1317
    const-string v1, "index"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1318
    const-string v1, "uuid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1319
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->startActivity(Landroid/content/Intent;)V

    .line 20
    return-void
.end method


# virtual methods
.method public final c_()V
    .locals 0

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->finish()V

    .line 330
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const v4, 0x7f06008e

    const/4 v3, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 81
    invoke-super {p0, p1}, Landroid/support/v7/a/s;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 83
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "push_msg"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/CommonPushMsg;

    .line 84
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->finish()V

    .line 129
    :goto_0
    return-void

    .line 88
    :cond_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1132
    :pswitch_0
    const v1, 0x7f0600cf

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->e:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v0, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->g:Ljava/lang/String;

    aput-object v0, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1133
    new-instance v1, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 1134
    const v2, 0x7f0600e8

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 1135
    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/b/a/b;->b(Ljava/lang/String;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1136
    invoke-virtual {v1, p0}, Lcom/nut/blehunter/ui/b/a/b;->a(Lcom/nut/blehunter/ui/b/a/e;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1137
    invoke-virtual {v1, v6}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1138
    invoke-virtual {v1, v7}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1139
    invoke-virtual {v1, v4, v8}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1140
    invoke-virtual {v1}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 1141
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "baseDialog"

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1145
    :pswitch_1
    const v1, 0x7f0600d1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->g:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v0, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->e:Ljava/lang/String;

    aput-object v0, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1146
    new-instance v1, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 1147
    const v2, 0x7f0600f0

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 1148
    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/b/a/b;->b(Ljava/lang/String;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1149
    invoke-virtual {v1, p0}, Lcom/nut/blehunter/ui/b/a/b;->a(Lcom/nut/blehunter/ui/b/a/e;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1150
    invoke-virtual {v1, v6}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1151
    invoke-virtual {v1, v7}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1152
    invoke-virtual {v1, v4, v8}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1153
    invoke-virtual {v1}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 1154
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "baseDialog"

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1158
    :pswitch_2
    const v1, 0x7f0600be

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->g:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v0, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->e:Ljava/lang/String;

    aput-object v0, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1160
    new-instance v1, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 1161
    const v2, 0x7f0600da

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 1162
    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/b/a/b;->b(Ljava/lang/String;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1163
    invoke-virtual {v1, p0}, Lcom/nut/blehunter/ui/b/a/b;->a(Lcom/nut/blehunter/ui/b/a/e;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1164
    invoke-virtual {v1, v6}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1165
    invoke-virtual {v1, v7}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1166
    invoke-virtual {v1, v4, v8}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1167
    invoke-virtual {v1}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 1168
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "baseDialog"

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1172
    :pswitch_3
    const v1, 0x7f0600d2

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->e:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v0, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->g:Ljava/lang/String;

    aput-object v0, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1174
    new-instance v1, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 1175
    const v2, 0x7f0600da

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 1176
    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/b/a/b;->b(Ljava/lang/String;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1177
    invoke-virtual {v1, p0}, Lcom/nut/blehunter/ui/b/a/b;->a(Lcom/nut/blehunter/ui/b/a/e;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1178
    invoke-virtual {v1, v6}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1179
    invoke-virtual {v1, v7}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1180
    invoke-virtual {v1, v4, v8}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1181
    invoke-virtual {v1}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 1182
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "baseDialog"

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u58f0\u660e\u4e22\u5931 Nut:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 105
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u53d6\u6d88\u58f0\u660e\u4e22\u5931 Nut:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1202
    :pswitch_6
    :try_start_0
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 1203
    new-instance v1, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 1204
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1205
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1206
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03005f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(Landroid/view/View;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1208
    const v2, 0x7f060085

    new-instance v3, Lcom/nut/blehunter/ui/ac;

    invoke-direct {v3, p0}, Lcom/nut/blehunter/ui/ac;-><init>(Lcom/nut/blehunter/ui/DialogBoxForPushActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1219
    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->e:Ljava/lang/String;

    const v2, 0x7f0600d5

    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v0, v2, v3, v1}, Lcom/nut/blehunter/ui/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/b;)Lcom/nut/blehunter/ui/b/a/f;

    move-result-object v1

    .line 1221
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "userAccessTokenExpire"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/b/a/f;

    .line 1224
    if-eqz v0, :cond_2

    .line 1225
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    const-string v1, "com.nutspace.action.logout"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 1229
    :cond_2
    :try_start_1
    const-string v0, "userAccessTokenExpire"

    invoke-virtual {v1, p0, v0}, Lcom/nut/blehunter/ui/b/a/f;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    .line 1237
    :pswitch_7
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "downloadUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1238
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "description"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1239
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v0, 0x7f0600bb

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1240
    :cond_3
    new-instance v2, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v2, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 1241
    const v3, 0x7f0600e7

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 1242
    invoke-virtual {v2, v0}, Lcom/nut/blehunter/ui/b/a/b;->b(Ljava/lang/String;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1243
    invoke-virtual {v2, v6}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1244
    invoke-virtual {v2, v6}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1245
    invoke-virtual {v2, p0}, Lcom/nut/blehunter/ui/b/a/b;->a(Lcom/nut/blehunter/ui/b/a/e;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1246
    const v0, 0x7f060095

    new-instance v3, Lcom/nut/blehunter/ui/ad;

    invoke-direct {v3, p0, v1}, Lcom/nut/blehunter/ui/ad;-><init>(Lcom/nut/blehunter/ui/DialogBoxForPushActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1253
    new-instance v0, Lcom/nut/blehunter/ui/b/a/i;

    invoke-direct {v0}, Lcom/nut/blehunter/ui/b/a/i;-><init>()V

    .line 1254
    invoke-virtual {v0, v2}, Lcom/nut/blehunter/ui/b/a/i;->a(Lcom/nut/blehunter/ui/b/a/b;)V

    .line 1255
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "baseDialog"

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/i;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1259
    :pswitch_8
    new-instance v0, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 1260
    const v1, 0x7f06006c

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 1261
    invoke-virtual {v0, p0}, Lcom/nut/blehunter/ui/b/a/b;->a(Lcom/nut/blehunter/ui/b/a/e;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1262
    invoke-virtual {v0, v6}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1263
    invoke-virtual {v0, v7}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1264
    invoke-virtual {v0, v4, v8}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1265
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 1266
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "baseDialog"

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1271
    :pswitch_9
    const v1, 0x7f0600d8

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1272
    const v2, 0x7f0600a2

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->g:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1274
    new-instance v3, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v3, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 1275
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03005f

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nut/blehunter/ui/b/a/b;->a(Landroid/view/View;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1276
    invoke-virtual {v3, p0}, Lcom/nut/blehunter/ui/b/a/b;->a(Lcom/nut/blehunter/ui/b/a/e;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1277
    invoke-virtual {v3, v6}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1278
    invoke-virtual {v3, v7}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1279
    const v4, 0x7f060081

    new-instance v5, Lcom/nut/blehunter/ui/ae;

    invoke-direct {v5, p0, v0}, Lcom/nut/blehunter/ui/ae;-><init>(Lcom/nut/blehunter/ui/DialogBoxForPushActivity;Lcom/nut/blehunter/entity/CommonPushMsg;)V

    invoke-virtual {v3, v4, v5}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1286
    iget-object v0, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/nut/blehunter/ui/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/b;)Lcom/nut/blehunter/ui/b/a/f;

    move-result-object v0

    .line 1287
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "baseDialog"

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/f;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1291
    :pswitch_a
    const v1, 0x7f06019b

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->g:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v0, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->k:Ljava/lang/String;

    aput-object v0, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1292
    new-instance v1, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 1293
    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/b/a/b;->b(Ljava/lang/String;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1294
    invoke-virtual {v1, p0}, Lcom/nut/blehunter/ui/b/a/b;->a(Lcom/nut/blehunter/ui/b/a/e;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1295
    invoke-virtual {v1, v6}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1296
    invoke-virtual {v1, v7}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1297
    const v0, 0x7f06008c

    invoke-virtual {v1, v0, v8}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1298
    invoke-virtual {v1}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 1299
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "baseDialog"

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1303
    :pswitch_b
    const v1, 0x7f06019c

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->g:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v0, v0, Lcom/nut/blehunter/entity/CommonPushMsg;->k:Ljava/lang/String;

    aput-object v0, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1304
    new-instance v1, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 1305
    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/b/a/b;->b(Ljava/lang/String;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1306
    invoke-virtual {v1, p0}, Lcom/nut/blehunter/ui/b/a/b;->a(Lcom/nut/blehunter/ui/b/a/e;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1307
    invoke-virtual {v1, v6}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1308
    invoke-virtual {v1, v7}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    .line 1309
    const v0, 0x7f06008c

    invoke-virtual {v1, v0, v8}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1310
    invoke-virtual {v1}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 1311
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "baseDialog"

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
