.class public final Lcom/bingerz/android/countrycodepicker/e;
.super Landroid/widget/BaseAdapter;
.source "CountryCodeAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bingerz/android/countrycodepicker/CountryCode;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bingerz/android/countrycodepicker/e;->a:Ljava/util/ArrayList;

    .line 26
    iput-object p1, p0, Lcom/bingerz/android/countrycodepicker/e;->b:Landroid/content/Context;

    .line 27
    iget-object v0, p0, Lcom/bingerz/android/countrycodepicker/e;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/bingerz/android/countrycodepicker/e;->c:Landroid/view/LayoutInflater;

    .line 28
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bingerz/android/countrycodepicker/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bingerz/android/countrycodepicker/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getPositionForSection(I)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/bingerz/android/countrycodepicker/e;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/bingerz/android/countrycodepicker/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bingerz/android/countrycodepicker/CountryCode;

    iget-object v0, v0, Lcom/bingerz/android/countrycodepicker/CountryCode;->g:Ljava/lang/String;

    .line 116
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 117
    if-ne v0, p1, :cond_0

    .line 121
    :goto_1
    return v1

    .line 114
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 121
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public final getSectionForPosition(I)I
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bingerz/android/countrycodepicker/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bingerz/android/countrycodepicker/CountryCode;

    iget-object v0, v0, Lcom/bingerz/android/countrycodepicker/CountryCode;->g:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 49
    if-nez p2, :cond_0

    .line 50
    iget-object v0, p0, Lcom/bingerz/android/countrycodepicker/e;->c:Landroid/view/LayoutInflater;

    sget v1, Lcom/bingerz/android/countrycodepicker/R$layout;->item_country_code_list:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 51
    new-instance v1, Lcom/bingerz/android/countrycodepicker/f;

    invoke-direct {v1}, Lcom/bingerz/android/countrycodepicker/f;-><init>()V

    .line 52
    sget v0, Lcom/bingerz/android/countrycodepicker/R$id;->tv_catalog:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bingerz/android/countrycodepicker/f;->a:Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/bingerz/android/countrycodepicker/R$id;->iv_list_country_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/bingerz/android/countrycodepicker/f;->b:Landroid/widget/ImageView;

    .line 54
    sget v0, Lcom/bingerz/android/countrycodepicker/R$id;->tv_list_country_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bingerz/android/countrycodepicker/f;->c:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/bingerz/android/countrycodepicker/R$id;->tv_list_country_code:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bingerz/android/countrycodepicker/f;->d:Landroid/widget/TextView;

    .line 56
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/bingerz/android/countrycodepicker/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bingerz/android/countrycodepicker/CountryCode;

    .line 63
    invoke-virtual {p0, p1}, Lcom/bingerz/android/countrycodepicker/e;->getSectionForPosition(I)I

    move-result v2

    .line 64
    invoke-virtual {p0, v2}, Lcom/bingerz/android/countrycodepicker/e;->getPositionForSection(I)I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 65
    iget-object v2, v1, Lcom/bingerz/android/countrycodepicker/f;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object v2, v1, Lcom/bingerz/android/countrycodepicker/f;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/bingerz/android/countrycodepicker/CountryCode;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_1
    const-string v2, "f%03d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v0, Lcom/bingerz/android/countrycodepicker/CountryCode;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 71
    iget-object v3, p0, Lcom/bingerz/android/countrycodepicker/e;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/bingerz/android/countrycodepicker/e;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 72
    iget-object v3, v1, Lcom/bingerz/android/countrycodepicker/f;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object v2, p0, Lcom/bingerz/android/countrycodepicker/e;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/bingerz/android/countrycodepicker/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    iget-object v2, v1, Lcom/bingerz/android/countrycodepicker/f;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/bingerz/android/countrycodepicker/CountryCode;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :goto_2
    iget-object v1, v1, Lcom/bingerz/android/countrycodepicker/f;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bingerz/android/countrycodepicker/CountryCode;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-object p2

    .line 58
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bingerz/android/countrycodepicker/f;

    move-object v1, v0

    goto :goto_0

    .line 68
    :cond_1
    iget-object v2, v1, Lcom/bingerz/android/countrycodepicker/f;->a:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 76
    :cond_2
    iget-object v2, v1, Lcom/bingerz/android/countrycodepicker/f;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/bingerz/android/countrycodepicker/CountryCode;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 85
    return-void
.end method
