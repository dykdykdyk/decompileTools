.class public final Lcom/nut/blehunter/ui/b/a/n;
.super Landroid/app/DialogFragment;
.source "MapChooseDialogFragment.java"


# instance fields
.field a:Ljava/lang/String;

.field private b:Lcom/nut/blehunter/entity/CustomMarker;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/n;->c:Ljava/util/List;

    .line 120
    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/nut/blehunter/ui/b/a/n;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/nut/blehunter/ui/b/a/n;

    invoke-direct {v0}, Lcom/nut/blehunter/ui/b/a/n;-><init>()V

    .line 47
    const/4 v1, 0x2

    const v2, 0x7f0800d5

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/n;->setStyle(II)V

    .line 48
    invoke-virtual {v0, p0}, Lcom/nut/blehunter/ui/b/a/n;->setArguments(Landroid/os/Bundle;)V

    .line 49
    return-object v0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/b/a/n;)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/n;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/b/a/n;)Lcom/nut/blehunter/entity/CustomMarker;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/n;->b:Lcom/nut/blehunter/entity/CustomMarker;

    return-object v0
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 66
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 67
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 68
    const v2, 0x7f0800d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 69
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 70
    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 71
    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/n;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 77
    if-nez v2, :cond_0

    .line 97
    :goto_0
    return-object v0

    .line 80
    :cond_0
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030062

    invoke-virtual {v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 82
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/n;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 83
    const-string v0, "marker"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/CustomMarker;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/n;->b:Lcom/nut/blehunter/entity/CustomMarker;

    .line 84
    const-string v0, "formatQuery"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/n;->a:Ljava/lang/String;

    .line 85
    const-string v0, "resolveInfos"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/n;->c:Ljava/util/List;

    .line 86
    const-string v0, "query=%s(%f,%f) title=%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nut/blehunter/ui/b/a/n;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/nut/blehunter/ui/b/a/n;->b:Lcom/nut/blehunter/entity/CustomMarker;

    iget-wide v6, v5, Lcom/nut/blehunter/entity/CustomMarker;->g:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/nut/blehunter/ui/b/a/n;->b:Lcom/nut/blehunter/entity/CustomMarker;

    iget-wide v6, v5, Lcom/nut/blehunter/entity/CustomMarker;->h:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/nut/blehunter/ui/b/a/n;->b:Lcom/nut/blehunter/entity/CustomMarker;

    iget-object v5, v5, Lcom/nut/blehunter/entity/CustomMarker;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v3}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    const v0, 0x7f0d00bd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 89
    new-instance v3, Lcom/nut/blehunter/ui/b/a/o;

    invoke-direct {v3, p0, v2}, Lcom/nut/blehunter/ui/b/a/o;-><init>(Lcom/nut/blehunter/ui/b/a/n;Landroid/content/Context;)V

    .line 90
    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v4, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/eg;)V

    .line 91
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/dx;)V

    .line 93
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 95
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/n;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/nut/blehunter/ui/b/a/n;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x41

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/nut/blehunter/d/q;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 96
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    .line 97
    goto/16 :goto_0
.end method

.method public final onStart()V
    .locals 3

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 55
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/n;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/n;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method
