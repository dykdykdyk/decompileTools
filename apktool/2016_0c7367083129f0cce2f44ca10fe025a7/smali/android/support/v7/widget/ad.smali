.class final Landroid/support/v7/widget/ad;
.super Landroid/widget/BaseAdapter;
.source "ActivityChooserView.java"


# instance fields
.field a:Landroid/support/v7/widget/x;

.field b:Z

.field final synthetic c:Landroid/support/v7/widget/ActivityChooserView;

.field private d:I

.field private e:Z

.field private f:Z


# virtual methods
.method public final a()I
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 767
    iget v4, p0, Landroid/support/v7/widget/ad;->d:I

    .line 768
    const v1, 0x7fffffff

    iput v1, p0, Landroid/support/v7/widget/ad;->d:I

    .line 773
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 774
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 775
    invoke-virtual {p0}, Landroid/support/v7/widget/ad;->getCount()I

    move-result v7

    move-object v1, v2

    move v3, v0

    .line 777
    :goto_0
    if-ge v0, v7, :cond_0

    .line 778
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/ad;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 779
    invoke-virtual {v1, v5, v6}, Landroid/view/View;->measure(II)V

    .line 780
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 777
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 783
    :cond_0
    iput v4, p0, Landroid/support/v7/widget/ad;->d:I

    .line 785
    return v3
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 789
    iget v0, p0, Landroid/support/v7/widget/ad;->d:I

    if-eq v0, p1, :cond_0

    .line 790
    iput p1, p0, Landroid/support/v7/widget/ad;->d:I

    .line 791
    invoke-virtual {p0}, Landroid/support/v7/widget/ad;->notifyDataSetChanged()V

    .line 793
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 800
    iget-boolean v0, p0, Landroid/support/v7/widget/ad;->f:Z

    if-eq v0, p1, :cond_0

    .line 801
    iput-boolean p1, p0, Landroid/support/v7/widget/ad;->f:Z

    .line 802
    invoke-virtual {p0}, Landroid/support/v7/widget/ad;->notifyDataSetChanged()V

    .line 804
    :cond_0
    return-void
.end method

.method public final a(ZZ)V
    .locals 1

    .prologue
    .line 820
    iget-boolean v0, p0, Landroid/support/v7/widget/ad;->b:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/ad;->e:Z

    if-eq v0, p2, :cond_1

    .line 822
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/ad;->b:Z

    .line 823
    iput-boolean p2, p0, Landroid/support/v7/widget/ad;->e:Z

    .line 824
    invoke-virtual {p0}, Landroid/support/v7/widget/ad;->notifyDataSetChanged()V

    .line 826
    :cond_1
    return-void
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Landroid/support/v7/widget/ad;->a:Landroid/support/v7/widget/x;

    invoke-virtual {v0}, Landroid/support/v7/widget/x;->a()I

    move-result v0

    .line 694
    iget-boolean v1, p0, Landroid/support/v7/widget/ad;->b:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ad;->a:Landroid/support/v7/widget/x;

    invoke-virtual {v1}, Landroid/support/v7/widget/x;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 695
    add-int/lit8 v0, v0, -0x1

    .line 697
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/ad;->d:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 698
    iget-boolean v1, p0, Landroid/support/v7/widget/ad;->f:Z

    if-eqz v1, :cond_1

    .line 699
    add-int/lit8 v0, v0, 0x1

    .line 701
    :cond_1
    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 706
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ad;->getItemViewType(I)I

    move-result v0

    .line 707
    packed-switch v0, :pswitch_data_0

    .line 716
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 709
    :pswitch_0
    const/4 v0, 0x0

    .line 714
    :goto_0
    return-object v0

    .line 711
    :pswitch_1
    iget-boolean v0, p0, Landroid/support/v7/widget/ad;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ad;->a:Landroid/support/v7/widget/x;

    invoke-virtual {v0}, Landroid/support/v7/widget/x;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 712
    add-int/lit8 p1, p1, 0x1

    .line 714
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ad;->a:Landroid/support/v7/widget/x;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/x;->a(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_0

    .line 707
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 722
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 678
    iget-boolean v0, p0, Landroid/support/v7/widget/ad;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ad;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 679
    const/4 v0, 0x1

    .line 681
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 727
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ad;->getItemViewType(I)I

    move-result v0

    .line 728
    packed-switch v0, :pswitch_data_0

    .line 760
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 730
    :pswitch_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 731
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ad;->c:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_activity_chooser_view_list_item:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 733
    invoke-virtual {p2, v5}, Landroid/view/View;->setId(I)V

    .line 734
    sget v0, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 735
    iget-object v1, p0, Landroid/support/v7/widget/ad;->c:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$string;->abc_activity_chooser_view_see_all:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    :cond_1
    :goto_0
    return-object p2

    .line 740
    :pswitch_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Landroid/support/v7/appcompat/R$id;->list_item:I

    if-eq v0, v1, :cond_3

    .line 741
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/ad;->c:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_activity_chooser_view_list_item:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 744
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/ad;->c:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 746
    sget v0, Landroid/support/v7/appcompat/R$id;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 747
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ad;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 748
    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 750
    sget v0, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 751
    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    iget-boolean v0, p0, Landroid/support/v7/widget/ad;->b:Z

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    iget-boolean v0, p0, Landroid/support/v7/widget/ad;->e:Z

    if-eqz v0, :cond_4

    .line 754
    invoke-static {p2, v5}, Landroid/support/v4/view/ViewCompat;->setActivated(Landroid/view/View;Z)V

    goto :goto_0

    .line 756
    :cond_4
    invoke-static {p2, v4}, Landroid/support/v4/view/ViewCompat;->setActivated(Landroid/view/View;Z)V

    goto :goto_0

    .line 728
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 687
    const/4 v0, 0x3

    return v0
.end method
