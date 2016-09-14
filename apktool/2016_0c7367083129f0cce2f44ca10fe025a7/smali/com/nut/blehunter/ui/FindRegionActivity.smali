.class public Lcom/nut/blehunter/ui/FindRegionActivity;
.super Lcom/nut/blehunter/ui/i;
.source "FindRegionActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/m;


# instance fields
.field private h:Lcom/nut/blehunter/entity/Nut;

.field private i:Landroid/view/Menu;

.field private j:Z

.field private k:Lcom/nut/blehunter/entity/MapRegion;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/nut/blehunter/ui/i;-><init>()V

    return-void
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->i:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->i:Landroid/view/Menu;

    const v1, 0x7f0d024c

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 61
    iget-object v0, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->i:Landroid/view/Menu;

    const v1, 0x7f0d024a

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 63
    :cond_0
    return-void

    .line 60
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Z)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->i:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->i:Landroid/view/Menu;

    const v1, 0x7f0d024a

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/FindRegionActivity;->c(Z)V

    .line 79
    return-void
.end method

.method public final d_()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/FindRegionActivity;->c(Z)V

    .line 74
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/FindRegionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 40
    const-string v1, "nut"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    iput-object v0, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->h:Lcom/nut/blehunter/entity/Nut;

    .line 41
    iget-object v0, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->h:Lcom/nut/blehunter/entity/Nut;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->h:Lcom/nut/blehunter/entity/Nut;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    if-nez v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->h:Lcom/nut/blehunter/entity/Nut;

    .line 1134
    iput-object v0, p0, Lcom/nut/blehunter/ui/i;->e:Lcom/nut/blehunter/entity/Nut;

    .line 45
    iget-object v0, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->h:Lcom/nut/blehunter/entity/Nut;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->o:Lcom/nut/blehunter/entity/LosingRecord;

    iget-object v0, v0, Lcom/nut/blehunter/entity/LosingRecord;->d:Ljava/lang/String;

    const-class v1, Lcom/nut/blehunter/entity/MapRegion;

    .line 2049
    invoke-static {v0, v1}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    check-cast v0, Lcom/nut/blehunter/entity/MapRegion;

    iput-object v0, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->k:Lcom/nut/blehunter/entity/MapRegion;

    .line 46
    iget-object v0, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->k:Lcom/nut/blehunter/entity/MapRegion;

    if-nez v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->h:Lcom/nut/blehunter/entity/Nut;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->o:Lcom/nut/blehunter/entity/LosingRecord;

    iget-object v0, v0, Lcom/nut/blehunter/entity/LosingRecord;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/nut/blehunter/d/g;->a(Ljava/lang/String;)Lcom/nut/blehunter/entity/MapRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->k:Lcom/nut/blehunter/entity/MapRegion;

    .line 49
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/FindRegionActivity;->d(I)V

    .line 50
    const v0, 0x7f0601d2

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/FindRegionActivity;->c(I)V

    .line 51
    iget-object v0, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->k:Lcom/nut/blehunter/entity/MapRegion;

    if-eqz v0, :cond_3

    .line 52
    iget-object v0, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->k:Lcom/nut/blehunter/entity/MapRegion;

    iget-object v1, v0, Lcom/nut/blehunter/entity/MapRegion;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->k:Lcom/nut/blehunter/entity/MapRegion;

    iget-wide v2, v0, Lcom/nut/blehunter/entity/MapRegion;->b:D

    iget-object v0, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->k:Lcom/nut/blehunter/entity/MapRegion;

    iget-wide v4, v0, Lcom/nut/blehunter/entity/MapRegion;->c:D

    iget-object v0, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->k:Lcom/nut/blehunter/entity/MapRegion;

    iget v6, v0, Lcom/nut/blehunter/entity/MapRegion;->d:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/nut/blehunter/ui/FindRegionActivity;->a(Ljava/lang/String;DDI)V

    .line 2156
    :cond_3
    iput-object p0, p0, Lcom/nut/blehunter/ui/i;->g:Lcom/nut/blehunter/ui/m;

    .line 55
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/i;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->i:Landroid/view/Menu;

    .line 84
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/FindRegionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 85
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/FindRegionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 86
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->j:Z

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/FindRegionActivity;->b(Z)V

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/FindRegionActivity;->c(Z)V

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 93
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 94
    packed-switch v0, :pswitch_data_0

    .line 117
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/i;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 96
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->j:Z

    .line 97
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/FindRegionActivity;->d()V

    .line 2160
    iget-object v0, p0, Lcom/nut/blehunter/ui/i;->f:Lcom/nut/blehunter/entity/Region;

    .line 99
    if-eqz v0, :cond_1

    .line 100
    iget-object v1, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->k:Lcom/nut/blehunter/entity/MapRegion;

    iget-object v2, v0, Lcom/nut/blehunter/entity/Region;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/nut/blehunter/entity/MapRegion;->a:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->k:Lcom/nut/blehunter/entity/MapRegion;

    iget-wide v2, v0, Lcom/nut/blehunter/entity/Region;->b:D

    iput-wide v2, v1, Lcom/nut/blehunter/entity/MapRegion;->b:D

    .line 102
    iget-object v1, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->k:Lcom/nut/blehunter/entity/MapRegion;

    iget-wide v2, v0, Lcom/nut/blehunter/entity/Region;->c:D

    iput-wide v2, v1, Lcom/nut/blehunter/entity/MapRegion;->c:D

    .line 103
    iget-object v1, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->k:Lcom/nut/blehunter/entity/MapRegion;

    iget v0, v0, Lcom/nut/blehunter/entity/Region;->d:I

    iput v0, v1, Lcom/nut/blehunter/entity/MapRegion;->d:I

    .line 105
    :cond_1
    invoke-static {}, Lcom/nut/blehunter/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->k:Lcom/nut/blehunter/entity/MapRegion;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->h:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->o:Lcom/nut/blehunter/entity/LosingRecord;

    iput-object v0, v1, Lcom/nut/blehunter/entity/LosingRecord;->d:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->h:Lcom/nut/blehunter/entity/Nut;

    .line 3121
    if-eqz v1, :cond_0

    .line 3125
    invoke-static {p0}, Lcom/nut/blehunter/d/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3126
    const v0, 0x7f0600f3

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 3130
    :cond_2
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 3131
    iget-object v0, v1, Lcom/nut/blehunter/entity/Nut;->o:Lcom/nut/blehunter/entity/LosingRecord;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 3132
    :goto_1
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->c()Lcom/nut/blehunter/rxApi/service/NutService;

    move-result-object v2

    const-string v3, "update"

    new-instance v4, Lcom/nut/blehunter/rxApi/model/DeclareLosingRequestBody;

    iget-object v5, v1, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-direct {v4, v5, v0}, Lcom/nut/blehunter/rxApi/model/DeclareLosingRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/nut/blehunter/rxApi/service/NutService;->declareLosing(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/DeclareLosingRequestBody;)Lretrofit2/Call;

    move-result-object v2

    new-instance v3, Lcom/nut/blehunter/ui/ap;

    invoke-direct {v3, p0, v1, v0}, Lcom/nut/blehunter/ui/ap;-><init>(Lcom/nut/blehunter/ui/FindRegionActivity;Lcom/nut/blehunter/entity/Nut;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    .line 3131
    :cond_3
    iget-object v0, v1, Lcom/nut/blehunter/entity/Nut;->o:Lcom/nut/blehunter/entity/LosingRecord;

    iget-object v0, v0, Lcom/nut/blehunter/entity/LosingRecord;->d:Ljava/lang/String;

    goto :goto_1

    .line 110
    :pswitch_2
    iput-boolean v1, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->j:Z

    .line 111
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->j:Z

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/FindRegionActivity;->b(Z)V

    .line 112
    invoke-direct {p0, v1}, Lcom/nut/blehunter/ui/FindRegionActivity;->c(Z)V

    .line 113
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/FindRegionActivity;->j:Z

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/FindRegionActivity;->a(Z)V

    .line 114
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/FindRegionActivity;->c()V

    goto/16 :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d024a
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
