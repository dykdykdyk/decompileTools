.class public Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;
.super Landroid/app/Activity;
.source "CountryCodeActivity.java"


# instance fields
.field protected a:Lcom/bingerz/android/countrycodepicker/e;

.field private b:Lcom/bingerz/android/countrycodepicker/SideBar;

.field private c:Landroid/widget/ListView;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bingerz/android/countrycodepicker/CountryCode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method private a()V
    .locals 11

    .prologue
    const/16 v10, 0x3007

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 67
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v1, v7

    .line 69
    :goto_0
    const/16 v0, 0xee

    if-gt v1, v0, :cond_0

    .line 70
    :try_start_0
    const-string v0, "c%03d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "array"

    invoke-virtual {p0}, Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 72
    invoke-virtual {p0}, Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 73
    const/4 v0, 0x2

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 74
    new-instance v0, Lcom/bingerz/android/countrycodepicker/CountryCode;

    const/4 v2, 0x0

    aget-object v2, v4, v2

    const/4 v3, 0x1

    aget-object v3, v4, v3

    const/4 v9, 0x3

    aget-object v4, v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/bingerz/android/countrycodepicker/CountryCode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 83
    :cond_0
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 84
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bingerz/android/countrycodepicker/CountryCode;

    .line 85
    invoke-static {p0}, Lcom/bingerz/android/countrycodepicker/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1065
    iget-object v1, v0, Lcom/bingerz/android/countrycodepicker/CountryCode;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1069
    iget-object v1, v0, Lcom/bingerz/android/countrycodepicker/CountryCode;->b:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2031
    const/16 v1, 0x4e00

    if-gt v1, v3, :cond_1

    const v1, 0x9fa5

    if-gt v3, v1, :cond_1

    .line 2032
    invoke-static {v3}, Lcom/a/a/a/a;->a(C)I

    move-result v1

    if-gtz v1, :cond_2

    :cond_1
    if-ne v10, v3, :cond_3

    :cond_2
    move v1, v6

    .line 2016
    :goto_3
    if-eqz v1, :cond_5

    .line 2017
    if-ne v3, v10, :cond_4

    .line 2018
    const-string v1, "LING"

    .line 1069
    :goto_4
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 1070
    const-string v3, "[A-Z]"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1071
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bingerz/android/countrycodepicker/CountryCode;->g:Ljava/lang/String;

    goto :goto_2

    .line 80
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_3
    move v1, v7

    .line 2032
    goto :goto_3

    .line 2020
    :cond_4
    sget-object v1, Lcom/a/a/a/e;->b:[Ljava/lang/String;

    invoke-static {v3}, Lcom/a/a/a/a;->a(C)I

    move-result v3

    aget-object v1, v1, v3

    goto :goto_4

    .line 2023
    :cond_5
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 1073
    :cond_6
    const-string v1, "#"

    iput-object v1, v0, Lcom/bingerz/android/countrycodepicker/CountryCode;->g:Ljava/lang/String;

    goto :goto_2

    .line 2052
    :cond_7
    iget-object v1, v0, Lcom/bingerz/android/countrycodepicker/CountryCode;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2056
    iget-object v1, v0, Lcom/bingerz/android/countrycodepicker/CountryCode;->c:Ljava/lang/String;

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 2057
    const-string v3, "[A-Z]"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2058
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bingerz/android/countrycodepicker/CountryCode;->g:Ljava/lang/String;

    goto/16 :goto_2

    .line 2060
    :cond_8
    const-string v1, "#"

    iput-object v1, v0, Lcom/bingerz/android/countrycodepicker/CountryCode;->g:Ljava/lang/String;

    goto/16 :goto_2

    .line 91
    :cond_9
    new-instance v0, Lcom/bingerz/android/countrycodepicker/d;

    invoke-direct {v0, p0}, Lcom/bingerz/android/countrycodepicker/d;-><init>(Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;)V

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 93
    iget-object v0, p0, Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 94
    iget-object v0, p0, Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 95
    iget-object v0, p0, Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;->a:Lcom/bingerz/android/countrycodepicker/e;

    .line 2099
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 2102
    iget-object v1, v0, Lcom/bingerz/android/countrycodepicker/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2103
    iget-object v1, v0, Lcom/bingerz/android/countrycodepicker/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v7, v8}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 2104
    invoke-virtual {v0}, Lcom/bingerz/android/countrycodepicker/e;->notifyDataSetChanged()V

    .line 97
    :cond_a
    return-void
.end method

.method static synthetic b(Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;->d:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget v0, Lcom/bingerz/android/countrycodepicker/R$layout;->activity_country_code:I

    invoke-virtual {p0, v0}, Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;->setContentView(I)V

    .line 1038
    sget v0, Lcom/bingerz/android/countrycodepicker/R$id;->sb_sidebar:I

    invoke-virtual {p0, v0}, Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bingerz/android/countrycodepicker/SideBar;

    iput-object v0, p0, Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;->b:Lcom/bingerz/android/countrycodepicker/SideBar;

    .line 1039
    iget-object v0, p0, Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;->b:Lcom/bingerz/android/countrycodepicker/SideBar;

    new-instance v1, Lcom/bingerz/android/countrycodepicker/b;

    invoke-direct {v1, p0}, Lcom/bingerz/android/countrycodepicker/b;-><init>(Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;)V

    invoke-virtual {v0, v1}, Lcom/bingerz/android/countrycodepicker/SideBar;->setOnTouchingLetterChangedListener(Lcom/bingerz/android/countrycodepicker/h;)V

    .line 1050
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;->d:Ljava/util/ArrayList;

    .line 1051
    new-instance v0, Lcom/bingerz/android/countrycodepicker/e;

    invoke-direct {v0, p0}, Lcom/bingerz/android/countrycodepicker/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;->a:Lcom/bingerz/android/countrycodepicker/e;

    .line 1052
    sget v0, Lcom/bingerz/android/countrycodepicker/R$id;->lv_list:I

    invoke-virtual {p0, v0}, Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;->c:Landroid/widget/ListView;

    .line 1053
    iget-object v0, p0, Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;->a:Lcom/bingerz/android/countrycodepicker/e;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1054
    iget-object v0, p0, Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/bingerz/android/countrycodepicker/c;

    invoke-direct {v1, p0}, Lcom/bingerz/android/countrycodepicker/c;-><init>(Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 34
    invoke-direct {p0}, Lcom/bingerz/android/countrycodepicker/CountryCodeActivity;->a()V

    .line 35
    return-void
.end method
