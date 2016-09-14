.class final Lcom/tencent/connect/b/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/b;


# instance fields
.field a:Lcom/tencent/tauth/b;

.field final synthetic b:Lcom/tencent/connect/b/a;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/connect/b/a;Lcom/tencent/tauth/b;)V
    .locals 1

    .prologue
    .line 461
    iput-object p1, p0, Lcom/tencent/connect/b/d;->b:Lcom/tencent/connect/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    const-string v0, "sendinstall"

    iput-object v0, p0, Lcom/tencent/connect/b/d;->c:Ljava/lang/String;

    .line 458
    const-string v0, "installwording"

    iput-object v0, p0, Lcom/tencent/connect/b/d;->d:Ljava/lang/String;

    .line 459
    const-string v0, "http://appsupport.qq.com/cgi-bin/qzapps/mapp_addapp.cgi"

    iput-object v0, p0, Lcom/tencent/connect/b/d;->e:Ljava/lang/String;

    .line 462
    iput-object p2, p0, Lcom/tencent/connect/b/d;->a:Lcom/tencent/tauth/b;

    .line 463
    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 586
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 587
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 591
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 592
    if-nez v2, :cond_0

    move-object v0, v1

    .line 620
    :goto_0
    return-object v0

    .line 595
    :cond_0
    const-string v0, ".9.png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 598
    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 602
    :goto_1
    if-eqz v2, :cond_1

    .line 603
    :try_start_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    .line 604
    invoke-static {v3}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    .line 605
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 618
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 600
    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 608
    goto :goto_0

    .line 611
    :cond_2
    invoke-static {v2, p0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    .line 612
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 618
    :catch_2
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/tencent/connect/b/d;->a:Lcom/tencent/tauth/b;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/tencent/connect/b/d;->a:Lcom/tencent/tauth/b;

    invoke-interface {v0}, Lcom/tencent/tauth/b;->a()V

    .line 791
    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/tauth/d;)V
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/tencent/connect/b/d;->a:Lcom/tencent/tauth/b;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/tencent/connect/b/d;->a:Lcom/tencent/tauth/b;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    .line 784
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 17

    .prologue
    .line 467
    if-eqz p1, :cond_0

    move-object/from16 v2, p1

    .line 468
    check-cast v2, Lorg/json/JSONObject;

    .line 470
    if-eqz v2, :cond_0

    .line 471
    const/4 v4, 0x0

    .line 472
    const-string v3, ""

    .line 474
    :try_start_0
    const-string v5, "sendinstall"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    .line 475
    :goto_0
    const-string v5, "installwording"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move v3, v4

    .line 480
    :goto_1
    invoke-static {v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 481
    const-string v2, "openSDK_LOG.AuthAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " WORDING = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "xx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/open/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    if-eqz v3, :cond_2

    .line 483
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 484
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/connect/b/d;->a:Lcom/tencent/tauth/b;

    .line 1507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/connect/b/d;->b:Lcom/tencent/connect/b/a;

    invoke-static {v2}, Lcom/tencent/connect/b/a;->e(Lcom/tencent/connect/b/a;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 1508
    if-eqz v2, :cond_0

    .line 1511
    new-instance v8, Landroid/app/Dialog;

    invoke-direct {v8, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1512
    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1514
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 1515
    const/4 v5, 0x0

    .line 1516
    const/4 v3, 0x0

    .line 1518
    :try_start_1
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 1526
    :goto_2
    if-eqz v4, :cond_3

    .line 1527
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v4, v3

    .line 1530
    :goto_3
    new-instance v5, Lcom/tencent/connect/b/e;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v8, v7, v1}, Lcom/tencent/connect/b/e;-><init>(Lcom/tencent/connect/b/d;Landroid/app/Dialog;Lcom/tencent/tauth/b;Ljava/lang/Object;)V

    .line 1545
    new-instance v9, Lcom/tencent/connect/b/f;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v9, v0, v8, v7, v1}, Lcom/tencent/connect/b/f;-><init>(Lcom/tencent/connect/b/d;Landroid/app/Dialog;Lcom/tencent/tauth/b;Ljava/lang/Object;)V

    .line 1561
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 1562
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 1563
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1625
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1626
    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1627
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1628
    iget v3, v10, Landroid/util/DisplayMetrics;->density:F

    .line 1630
    new-instance v10, Landroid/widget/RelativeLayout;

    invoke-direct {v10, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1633
    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1634
    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1635
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1636
    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 1638
    const/high16 v4, 0x42700000    # 60.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 1640
    const/high16 v12, 0x41600000    # 14.0f

    mul-float/2addr v12, v3

    float-to-int v12, v12

    .line 1641
    const/high16 v13, 0x41900000    # 18.0f

    mul-float/2addr v13, v3

    float-to-int v13, v13

    .line 1642
    const/high16 v14, 0x40c00000    # 6.0f

    mul-float/2addr v14, v3

    float-to-int v14, v14

    .line 1644
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v15, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1645
    const/16 v4, 0x9

    invoke-virtual {v15, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1646
    const/4 v4, 0x0

    invoke-virtual {v15, v4, v13, v14, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1648
    invoke-virtual {v10, v11, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1651
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1652
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1653
    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1654
    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1657
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1658
    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v4, v6, v11, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1659
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLines(I)V

    .line 1660
    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setId(I)V

    .line 1661
    const/high16 v6, 0x43390000    # 185.0f

    mul-float/2addr v6, v3

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 1662
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v13, -0x2

    invoke-direct {v6, v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1663
    const/4 v11, 0x1

    const/4 v13, 0x1

    invoke-virtual {v6, v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1664
    const/4 v11, 0x6

    const/4 v13, 0x1

    invoke-virtual {v6, v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1666
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x40a00000    # 5.0f

    mul-float/2addr v14, v3

    float-to-int v14, v14

    const/4 v15, 0x0

    invoke-virtual {v6, v11, v13, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1667
    invoke-virtual {v10, v4, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1670
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1671
    const/16 v6, 0xd6

    const/16 v11, 0xd6

    const/16 v13, 0xd6

    invoke-static {v6, v11, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1672
    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Landroid/view/View;->setId(I)V

    .line 1673
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v13, 0x2

    invoke-direct {v6, v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1674
    const/4 v11, 0x3

    const/4 v13, 0x1

    invoke-virtual {v6, v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1676
    const/4 v11, 0x5

    const/4 v13, 0x1

    invoke-virtual {v6, v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1677
    const/4 v11, 0x7

    const/4 v13, 0x5

    invoke-virtual {v6, v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1678
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x41400000    # 12.0f

    mul-float/2addr v15, v3

    float-to-int v15, v15

    invoke-virtual {v6, v11, v13, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1679
    invoke-virtual {v10, v4, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1682
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1683
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v13, -0x2

    invoke-direct {v6, v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1684
    const/4 v11, 0x5

    const/4 v13, 0x1

    invoke-virtual {v6, v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1685
    const/4 v11, 0x7

    const/4 v13, 0x5

    invoke-virtual {v6, v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1686
    const/4 v11, 0x3

    const/4 v13, 0x3

    invoke-virtual {v6, v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1688
    new-instance v11, Landroid/widget/Button;

    invoke-direct {v11, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1689
    const-string v13, "\u8df3\u8fc7"

    invoke-virtual {v11, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1690
    const-string v13, "buttonNegt.png"

    invoke-static {v13, v2}, Lcom/tencent/connect/b/d;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 1691
    invoke-virtual {v11, v13}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1692
    const/16 v13, 0x24

    const/16 v14, 0x61

    const/16 v15, 0x83

    invoke-static {v13, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/widget/Button;->setTextColor(I)V

    .line 1693
    const/high16 v13, 0x41a00000    # 20.0f

    invoke-virtual {v11, v13}, Landroid/widget/Button;->setTextSize(F)V

    .line 1694
    invoke-virtual {v11, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1695
    const/4 v9, 0x4

    invoke-virtual {v11, v9}, Landroid/widget/Button;->setId(I)V

    .line 1696
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, 0x0

    const/high16 v14, 0x42340000    # 45.0f

    mul-float/2addr v14, v3

    float-to-int v14, v14

    invoke-direct {v9, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1697
    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1698
    const/high16 v13, 0x40800000    # 4.0f

    mul-float/2addr v13, v3

    float-to-int v13, v13

    iput v13, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1699
    const/high16 v13, 0x3f800000    # 1.0f

    iput v13, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1700
    invoke-virtual {v4, v11, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1702
    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1703
    const-string v11, "\u786e\u5b9a"

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1704
    const/high16 v11, 0x41a00000    # 20.0f

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setTextSize(F)V

    .line 1705
    const/16 v11, 0xff

    const/16 v13, 0xff

    const/16 v14, 0xff

    invoke-static {v11, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 1706
    const-string v11, "buttonPost.png"

    invoke-static {v11, v2}, Lcom/tencent/connect/b/d;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 1707
    invoke-virtual {v9, v11}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1708
    invoke-virtual {v9, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1709
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, 0x0

    const/high16 v13, 0x42340000    # 45.0f

    mul-float/2addr v13, v3

    float-to-int v13, v13

    invoke-direct {v5, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1710
    const/high16 v11, 0x3f800000    # 1.0f

    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1711
    const/high16 v11, 0x40800000    # 4.0f

    mul-float/2addr v11, v3

    float-to-int v11, v11

    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1712
    invoke-virtual {v4, v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1718
    invoke-virtual {v10, v4, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1753
    const v4, 0x438b8000    # 279.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 1754
    const/high16 v5, 0x43230000    # 163.0f

    mul-float/2addr v5, v3

    float-to-int v5, v5

    .line 1755
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1757
    const/4 v4, 0x0

    const/high16 v5, 0x41400000    # 12.0f

    mul-float/2addr v5, v3

    float-to-int v5, v5

    const/high16 v9, 0x41400000    # 12.0f

    mul-float/2addr v9, v3

    float-to-int v9, v9

    invoke-virtual {v10, v12, v4, v5, v9}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1758
    invoke-virtual {v10, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1759
    const/16 v4, 0xf7

    const/16 v5, 0xfb

    const/16 v6, 0xf7

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v10, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1762
    new-instance v4, Landroid/graphics/drawable/PaintDrawable;

    const/16 v5, 0xf7

    const/16 v6, 0xfb

    const/16 v9, 0xf7

    invoke-static {v5, v6, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 1763
    const/high16 v5, 0x40a00000    # 5.0f

    mul-float/2addr v3, v5

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 1764
    invoke-virtual {v10, v4}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1565
    invoke-virtual {v8, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1566
    new-instance v3, Lcom/tencent/connect/b/g;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v7, v1}, Lcom/tencent/connect/b/g;-><init>(Lcom/tencent/connect/b/d;Lcom/tencent/tauth/b;Ljava/lang/Object;)V

    .line 1577
    invoke-virtual {v8, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1578
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1579
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 494
    :cond_0
    :goto_4
    return-void

    .line 474
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 477
    :catch_0
    move-exception v2

    move v2, v4

    const-string v4, "openSDK_LOG.AuthAgent"

    const-string v5, "FeedConfirmListener onComplete There is no value for sendinstall."

    invoke-static {v4, v5}, Lcom/tencent/open/a/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v3

    move v3, v2

    move-object/from16 v2, v16

    goto/16 :goto_1

    .line 1521
    :catch_1
    move-exception v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v4, v5

    goto/16 :goto_2

    .line 489
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/connect/b/d;->a:Lcom/tencent/tauth/b;

    if-eqz v2, :cond_0

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/connect/b/d;->a:Lcom/tencent/tauth/b;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/tencent/tauth/b;->a(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    move-object v4, v3

    goto/16 :goto_3
.end method
