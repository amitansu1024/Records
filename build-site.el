(require 'ox-publish)

(setq org-html-validation-link nil
      org-html-head-include-scripts nil
      org-html-include-default-style nil
      org-html-head "<link rel=\stylesheet\" href\"https://cdn.simplecss.org/simple.min.css\"/>")

(setq org-publish-project-alist
      (list
       (list "MitOS"
	     :recursive t
	     :base-directory "./contents/"
	     :with-author nil
	     :with-creator
	     t
	     :with-toc nil
	     :secction-numbers nil
	     :publishing-directory "./public/"
	     :publishing-function 'org-html-publish-to-html)))

(org-publish-all t)

(message "build complete")
