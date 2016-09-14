.class public Lcom/nut/blehunter/ui/DeclareLostActivity;
.super Lcom/nut/blehunter/ui/b;
.source "DeclareLostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:I

.field private final b:I

.field private c:Landroid/view/Menu;

.field private d:Lcom/nut/blehunter/entity/Nut;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/nut/blehunter/entity/MapRegion;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->a:I

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->b:I

    return-void
.end method

.method private a(Landroid/view/Menu;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    if-nez p1, :cond_0

    .line 187
    :goto_0
    return-void

    .line 178
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 179
    invoke-direct {p0}, Lcom/nut/blehunter/ui/DeclareLostActivity;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    const-string v1, "setMenuEnable exception"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, La/a/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 182
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 190
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const v0, 0x7f06009d

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 192
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DeclareLostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DeclareLostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/DeclareLostActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/nut/blehunter/ui/DeclareLostActivity;->d()V

    return-void
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->g:Lcom/nut/blehunter/entity/MapRegion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->g:Lcom/nut/blehunter/entity/MapRegion;

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/MapRegion;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 167
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 168
    const-string v1, "need_finish"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ui/DeclareLostActivity;->setResult(ILandroid/content/Intent;)V

    .line 170
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DeclareLostActivity;->finish()V

    .line 171
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 116
    invoke-super {p0, p1, p2, p3}, Lcom/nut/blehunter/ui/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 117
    packed-switch p1, :pswitch_data_0

    .line 137
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->c:Landroid/view/Menu;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/DeclareLostActivity;->a(Landroid/view/Menu;)V

    .line 138
    :cond_1
    return-void

    .line 119
    :pswitch_0
    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 120
    const-string v0, "map_region"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/MapRegion;

    iput-object v0, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->g:Lcom/nut/blehunter/entity/MapRegion;

    .line 121
    iget-object v0, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->g:Lcom/nut/blehunter/entity/MapRegion;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->g:Lcom/nut/blehunter/entity/MapRegion;

    iget-object v0, v0, Lcom/nut/blehunter/entity/MapRegion;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    const v0, 0x7f0d00ab

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/DeclareLostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->g:Lcom/nut/blehunter/entity/MapRegion;

    iget-object v1, v1, Lcom/nut/blehunter/entity/MapRegion;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/ui/DeclareLostActivity;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :pswitch_1
    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 130
    const-string v0, "country"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->e:Ljava/lang/String;

    .line 131
    const-string v0, "phone"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->f:Ljava/lang/String;

    .line 132
    const v0, 0x7f0d00b2

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/DeclareLostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->f:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/ui/DeclareLostActivity;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 112
    :goto_0
    return-void

    .line 95
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/SetFindRegionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    const-string v1, "nut"

    iget-object v2, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->g:Lcom/nut/blehunter/entity/MapRegion;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->g:Lcom/nut/blehunter/entity/MapRegion;

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/MapRegion;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const-string v1, "map_region"

    iget-object v2, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->g:Lcom/nut/blehunter/entity/MapRegion;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 100
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/DeclareLostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 103
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    const v0, 0x7f0d00b2

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/DeclareLostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x7f06009d

    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/DeclareLostActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 107
    const-string v2, "phone"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ui/DeclareLostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 93
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d00a9 -> :sswitch_0
        0x7f0d00b0 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/DeclareLostActivity;->setContentView(I)V

    .line 59
    const v0, 0x7f0601d0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/DeclareLostActivity;->a(I)V

    .line 60
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DeclareLostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nut"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    iput-object v0, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->d:Lcom/nut/blehunter/entity/Nut;

    .line 1141
    iget-object v0, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->d:Lcom/nut/blehunter/entity/Nut;

    if-eqz v0, :cond_0

    .line 1142
    const v0, 0x7f0d0093

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/DeclareLostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/widget/CircleImageView;

    .line 1143
    iget-object v1, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->d:Lcom/nut/blehunter/entity/Nut;

    invoke-static {v0, v1}, Lcom/nut/blehunter/t;->a(Landroid/widget/ImageView;Lcom/nut/blehunter/entity/Nut;)V

    .line 1144
    const v0, 0x7f0d00a5

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/DeclareLostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1147
    :cond_0
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    .line 1148
    if-eqz v1, :cond_1

    .line 1149
    const v0, 0x7f0d00b2

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/DeclareLostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/User;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/nut/blehunter/ui/DeclareLostActivity;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1151
    invoke-virtual {v1}, Lcom/nut/blehunter/entity/User;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->e:Ljava/lang/String;

    .line 1152
    invoke-virtual {v1}, Lcom/nut/blehunter/entity/User;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->f:Ljava/lang/String;

    .line 1155
    :cond_1
    const v0, 0x7f0d00a9

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/DeclareLostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1156
    const v0, 0x7f0d00b0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/DeclareLostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->c:Landroid/view/Menu;

    .line 67
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/DeclareLostActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0011

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 68
    iget-object v0, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->c:Landroid/view/Menu;

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/DeclareLostActivity;->a(Landroid/view/Menu;)V

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 75
    const v2, 0x7f0d0254

    if-ne v1, v2, :cond_2

    .line 76
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/provider/l;->d(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v1

    .line 77
    iget v1, v1, Lcom/nut/blehunter/entity/Nut;->K:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/nut/blehunter/ui/DeclareLostActivity;->d()V

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    invoke-static {}, Lcom/nut/blehunter/e;->a()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->g:Lcom/nut/blehunter/entity/MapRegion;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->d:Lcom/nut/blehunter/entity/Nut;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/nut/blehunter/ui/DeclareLostActivity;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    iget-object v0, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->d:Lcom/nut/blehunter/entity/Nut;

    .line 1200
    if-eqz v0, :cond_2

    .line 1204
    invoke-static {p0}, Lcom/nut/blehunter/d/h;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1205
    const v0, 0x7f0600f3

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    .line 87
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 1209
    :cond_3
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 1210
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->c()Lcom/nut/blehunter/rxApi/service/NutService;

    move-result-object v2

    const-string v3, "create"

    new-instance v4, Lcom/nut/blehunter/rxApi/model/DeclareLosingRequestBody;

    iget-object v5, p0, Lcom/nut/blehunter/ui/DeclareLostActivity;->d:Lcom/nut/blehunter/entity/Nut;

    iget-object v5, v5, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-direct {v4, v5, v1}, Lcom/nut/blehunter/rxApi/model/DeclareLosingRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/nut/blehunter/rxApi/service/NutService;->declareLosing(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/DeclareLosingRequestBody;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/nut/blehunter/ui/ab;

    invoke-direct {v2, p0, v0}, Lcom/nut/blehunter/ui/ab;-><init>(Lcom/nut/blehunter/ui/DeclareLostActivity;Lcom/nut/blehunter/entity/Nut;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_1
.end method
