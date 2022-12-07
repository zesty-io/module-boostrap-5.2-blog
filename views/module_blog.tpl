(** default code https://zesty.org/services/web-engine/introduction-to-parsley/parsley-autolayout **)
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
<section class="module-blog">
  <div class="container">
    <div class="row">
        <div class="col-lg-8">
        <!-- Post content-->
             <article>
                <!-- Post header-->
                <header class="mb-4">
                    <!-- Post title-->
                    <h1 class="fw-bolder mb-1">{{this.blog_title_header}}</h1><!-- Post meta content-->
                    <div class="text-muted fst-italic mb-2">
                    {{this.blog_author_date}}
                    </div><!-- Post categories-->
                    {{each module_category_badge_text as badge_category}}
                    <span class="badge bg-secondary text-decoration-none link-light">{{badge_category.badge_content}}</span> 
                    {{end-each}}
                </header><!-- Preview image figure-->
                <figure class="mb-4">
                    <img class="img-fluid rounded" src="https://dx8z8bb8.media.zestyio.com/blog-main-img.jpg" alt="Blog main image">
                </figure><!-- Post content-->
                <section class="mb-5">
                    {{this.text_contents}}

                    <div class="additional_content">
                      {{this.additional_contents}}
                    </div>
                    <div class="ratio ratio-16x9">
                      {{this.iframe_yt_vid}}
                    </div>
                </section>

                <section class="mb-5">
                    <div class="card bg-light">
                        <div class="card-body">
                        <!-- Comment form-->
                        <form class="mb-4">
                            <textarea class="form-control" rows="3" placeholder="Join the discussion and leave a comment!"></textarea>
                        </form><!-- Comment with nested comments-->
                        <div class="d-flex mb-4">
                            <!-- Parent comment-->
                            <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..."></div>
                            <div class="ms-3">
                            <div class="fw-bold">
                                Commenter Name
                            </div>Awesome video! How I wish to experience traveling on all over the world and explore many things without worrying. <!-- Child comment 1-->
                            <div class="d-flex mt-4">
                                <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..."></div>
                                <div class="ms-3">
                                <div class="fw-bold">
                                    Commenter Name
                                </div>You can do it for sure!
                                </div>
                            </div><!-- Child comment 2-->
                            <div class="d-flex mt-4">
                                <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..."></div>
                                <div class="ms-3">
                                <div class="fw-bold">
                                    Commenter Name
                                </div>Same here! It is worth it to spend money for that awesome experience.
                                </div>
                            </div>
                            </div>
                        </div><!-- Single comment-->
                        <div class="d-flex">
                            <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..."></div>
                            <div class="ms-3">
                            <div class="fw-bold">
                                Commenter Name
                            </div>Travel is a great way to learn about other cultures and get a taste of different foods. I like it because I can meet new people and see new places. If you want to travel, try these tips:
                            </div>
                        </div>
                        </div>
                    </div>
                </section>
            </article><!-- Comments section-->

        </div><!-- Side widgets-->
      
        <div class="col-lg-4">
            <aside>
                <!-- Categories widget-->
                 <div class="card mb-4">
                   <div class="card-header text-center fw-bold">
                     Categories
                   </div>
                   <div class="card-body">
                     <div class="row row-cols-2 text-center">
                       {{each module_blog_categories as category}}
                          <div class="col">
                            <a class="category-items fs-6 fw-bold" href="{{category.category_link}}">{{category.category_content}}</a>    
                          </div>
                       {{end-each}}
                                              
                     </div>
                   </div>
                 </div><!-- Side widget-->

                 <div class="card mb-4">
                   <div class="card-body side-body-container text-center">
                       <h6> Popular Blogs</h6>
                       {{each module_blog_popular_blogs as popular_blog}}
                            <div class="row">
                              <div class="col side-body-container text-center">
                                <img src="{{popular_blog.img_thumbnail.getImage()}}" class="side-img rounded mx-auto d-block" alt="..."> <a class="badge bg-primary link-light side-name" href="{{popular_blog.popular_blog_link}}">See Blog</a>
                              </div>
                              <div class="col side-description text-justify">
                                <p>{{popular_blog.blog_description}}</p>
                              </div>
                            </div>
                       {{end-each}}
                    
                     <ul class="pagination">
                       <li class="page-item">
                         <a class="page-link" href="#">Previous</a>
                       </li>
                       <li class="page-item">
                         <a class="page-link" href="#">1</a>
                       </li>
                       <li class="page-item">
                         <a class="page-link" href="#">2</a>
                       </li>
                       <li class="page-item">
                         <a class="page-link" href="#">3</a>
                       </li>
                       <li class="page-item">
                         <a class="page-link" href="#">Next</a>
                       </li>
                     </ul>
                   </div>
                 </div>
         
                 <div class="mb-5 text-center row">
                     <h6 "class="">You may also like:</h6>

                     <div class="col"> 
                       {{each module_blog_related_videos as rv}}
                        <div class="card ymal-vid">
                            {{rv.iframe_video}}
                            <div class="card-body">
                            <p class="card-text fst-italic">{{rv.description}}</p>
                            </div>
                        </div>
                        {{end-each}}
                    </div>
                 </div>
         
                     <div class="card mb-4">
                         <div class="card-body text-center">
                             <h6 class="">Want to hear more about the author?</h6>
                             <div class="blog-social-wrapper"> 
                               {{each module_blog_author_social_links as social}}
                                     <a href="{{social.social_link}}" target="_blank"><img class="blog-social-media" src="{{social.social_image.getImage()}}" alt="facebook"></a> 
                               {{end-each}}
                            </div>
                         </div>
                     </div>
             </aside>
        </div>

    </div>
  </div>
</section>