.class final Lcom/nut/blehunter/ui/fe;
.super Lcom/nut/blehunter/ui/a/a/a;
.source "SafeRegionManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nut/blehunter/ui/a/a/a",
        "<",
        "Lcom/nut/blehunter/entity/SafeRegion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/nut/blehunter/ui/SafeRegionManageActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/SafeRegionManageActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 101
    iput-object p1, p0, Lcom/nut/blehunter/ui/fe;->c:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    const v0, 0x7f03009a

    invoke-direct {p0, p2, v0, p3}, Lcom/nut/blehunter/ui/a/a/a;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/nut/blehunter/ui/a/a/a/c;Ljava/lang/Object;I)V
    .locals 5

    .prologue
    const v4, 0x7f0d0202

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    check-cast p2, Lcom/nut/blehunter/entity/SafeRegion;

    .line 1104
    const v0, 0x7f0d0200

    iget-object v3, p2, Lcom/nut/blehunter/entity/SafeRegion;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/nut/blehunter/ui/a/a/a/c;->a(ILjava/lang/String;)Lcom/nut/blehunter/ui/a/a/a/c;

    .line 1105
    const v0, 0x7f0d0201

    iget-object v3, p2, Lcom/nut/blehunter/entity/SafeRegion;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/nut/blehunter/ui/a/a/a/c;->a(ILjava/lang/String;)Lcom/nut/blehunter/ui/a/a/a/c;

    .line 1106
    iget-object v0, p0, Lcom/nut/blehunter/ui/fe;->c:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    iget-object v3, p2, Lcom/nut/blehunter/entity/SafeRegion;->e:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->a(Lcom/nut/blehunter/ui/SafeRegionManageActivity;Ljava/lang/String;)Z

    move-result v3

    .line 1208
    invoke-virtual {p1, v4}, Lcom/nut/blehunter/ui/a/a/a/c;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1209
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1107
    new-instance v3, Lcom/nut/blehunter/ui/ff;

    invoke-direct {v3, p0, p2}, Lcom/nut/blehunter/ui/ff;-><init>(Lcom/nut/blehunter/ui/fe;Lcom/nut/blehunter/entity/SafeRegion;)V

    .line 1235
    invoke-virtual {p1, v4}, Lcom/nut/blehunter/ui/a/a/a/c;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1236
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1113
    iget-object v0, p0, Lcom/nut/blehunter/ui/fe;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_1

    move v0, v1

    .line 2143
    :goto_0
    const v3, 0x7f0d0204

    invoke-virtual {p1, v3}, Lcom/nut/blehunter/ui/a/a/a/c;->c(I)Landroid/view/View;

    move-result-object v3

    .line 2144
    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1114
    iget-object v0, p0, Lcom/nut/blehunter/ui/fe;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/nut/blehunter/ui/fe;->c:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    const v3, 0x7f06019a

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nut/blehunter/ui/fe;->c:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    invoke-static {v4}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->a(Lcom/nut/blehunter/ui/SafeRegionManageActivity;)Lcom/nut/blehunter/entity/Friend;

    move-result-object v4

    iget-object v4, v4, Lcom/nut/blehunter/entity/Friend;->b:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1116
    const v1, 0x7f0d0205

    invoke-virtual {p1, v1, v0}, Lcom/nut/blehunter/ui/a/a/a/c;->a(ILjava/lang/String;)Lcom/nut/blehunter/ui/a/a/a/c;

    .line 101
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1113
    goto :goto_0

    .line 2144
    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method
