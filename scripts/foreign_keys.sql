
SET search_path = bazaar, pg_catalog;

--
-- Name: api_key_user_id_fkey; Type: FK CONSTRAINT; Schema: bazaar;
--

ALTER TABLE ONLY api_key
    ADD CONSTRAINT api_key_user_id_fkey FOREIGN KEY (user_id) REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cart_line_cart_id_fkey; Type: FK CONSTRAINT; Schema: bazaar;
--

ALTER TABLE ONLY cart_line
    ADD CONSTRAINT cart_line_cart_id_fkey FOREIGN KEY (cart_id) REFERENCES cart(cart_id);


--
-- Name: order_line_order_id_fkey; Type: FK CONSTRAINT; Schema: bazaar;
--

ALTER TABLE ONLY order_line
    ADD CONSTRAINT order_line_order_id_fkey FOREIGN KEY (order_id) REFERENCES orders(order_id) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: organization_parent_organization_id_fkey; Type: FK CONSTRAINT; Schema: bazaar;
--

ALTER TABLE ONLY organization
    ADD CONSTRAINT organization_parent_organization_id_fkey FOREIGN KEY (parent_organization_id) REFERENCES organization(organization_id) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: photo_sizes_photo_id_fkey; Type: FK CONSTRAINT; Schema: bazaar;
--

ALTER TABLE ONLY photo_sizes
    ADD CONSTRAINT photo_sizes_photo_id_fkey FOREIGN KEY (photo_id) REFERENCES photo(photo_id) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_availability_product_id_fkey; Type: FK CONSTRAINT; Schema: bazaar;
--

ALTER TABLE ONLY product_availability
    ADD CONSTRAINT product_availability_product_id_fkey FOREIGN KEY (product_id) REFERENCES product(product_id) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_category_category_id_fkey; Type: FK CONSTRAINT; Schema: bazaar;
--

ALTER TABLE ONLY product_category
    ADD CONSTRAINT product_category_category_id_fkey FOREIGN KEY (category_id) REFERENCES category(category_id) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_category_product_id_fkey; Type: FK CONSTRAINT; Schema: bazaar;
--

ALTER TABLE ONLY product_category
    ADD CONSTRAINT product_category_product_id_fkey FOREIGN KEY (product_id) REFERENCES product(product_id) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_currency_id_fkey; Type: FK CONSTRAINT; Schema: bazaar;
--

ALTER TABLE ONLY product
    ADD CONSTRAINT product_currency_id_fkey FOREIGN KEY (currency_id) REFERENCES payment.currency(currency_id) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_photo_photo_id_fkey; Type: FK CONSTRAINT; Schema: bazaar;
--

ALTER TABLE ONLY product_photo
    ADD CONSTRAINT product_photo_photo_id_fkey FOREIGN KEY (photo_id) REFERENCES photo(photo_id) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_photo_product_id_fkey; Type: FK CONSTRAINT; Schema: bazaar;
--

ALTER TABLE ONLY product_photo
    ADD CONSTRAINT product_photo_product_id_fkey FOREIGN KEY (product_id) REFERENCES product(product_id) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_review_product_id_fkey; Type: FK CONSTRAINT; Schema: bazaar;
--

ALTER TABLE ONLY product_review
    ADD CONSTRAINT product_review_product_id_fkey FOREIGN KEY (product_id) REFERENCES product(product_id) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_review_review_id_fkey; Type: FK CONSTRAINT; Schema: bazaar;
--

ALTER TABLE ONLY product_review
    ADD CONSTRAINT product_review_review_id_fkey FOREIGN KEY (review_id) REFERENCES review(review_id) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_user_id_fkey; Type: FK CONSTRAINT; Schema: bazaar;
--

ALTER TABLE ONLY product
    ADD CONSTRAINT product_user_id_fkey FOREIGN KEY (owner_id) REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: settings_user_id_fkey; Type: FK CONSTRAINT; Schema: bazaar;
--

ALTER TABLE ONLY settings
    ADD CONSTRAINT settings_user_id_fkey FOREIGN KEY (user_id) REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_info_address_id_fkey; Type: FK CONSTRAINT; Schema: bazaar;
--

ALTER TABLE ONLY user_info
    ADD CONSTRAINT user_info_address_id_fkey FOREIGN KEY (address_id) REFERENCES address(address_id) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_info_photo_id_fkey; Type: FK CONSTRAINT; Schema: bazaar;
--

ALTER TABLE ONLY user_info
    ADD CONSTRAINT user_info_photo_id_fkey FOREIGN KEY (photo_id) REFERENCES photo(photo_id) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_info_user_id_fkey; Type: FK CONSTRAINT; Schema: bazaar;
--

ALTER TABLE ONLY user_info
    ADD CONSTRAINT user_info_user_id_fkey FOREIGN KEY (user_id) REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_location_user_id_fkey; Type: FK CONSTRAINT; Schema: bazaar;
--

ALTER TABLE ONLY user_location
    ADD CONSTRAINT user_location_user_id_fkey FOREIGN KEY (user_id) REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_review_review_id_fkey; Type: FK CONSTRAINT; Schema: bazaar;
--

ALTER TABLE ONLY user_review
    ADD CONSTRAINT user_review_review_id_fkey FOREIGN KEY (review_id) REFERENCES review(review_id) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_review_user_id_fkey; Type: FK CONSTRAINT; Schema: bazaar;
--

ALTER TABLE ONLY user_review
    ADD CONSTRAINT user_review_user_id_fkey FOREIGN KEY (user_id) REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wishlist_line_wishlist_id_fkey; Type: FK CONSTRAINT; Schema: bazaar;
--

ALTER TABLE ONLY wishlist_line
    ADD CONSTRAINT wishlist_line_wishlist_id_fkey FOREIGN KEY (wishlist_id) REFERENCES wishlist(wishlist_id) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


SET search_path = payment, pg_catalog;

--
-- Name: currency_country_id_fkey; Type: FK CONSTRAINT; Schema: payment;
--

ALTER TABLE ONLY currency
    ADD CONSTRAINT currency_country_id_fkey FOREIGN KEY (country_id) REFERENCES country(country_id) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: exchange_rate_from_currency_fkey; Type: FK CONSTRAINT; Schema: payment;
--

ALTER TABLE ONLY exchange_rate
    ADD CONSTRAINT exchange_rate_from_currency_fkey FOREIGN KEY (from_currency) REFERENCES currency(currency_id) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: exchange_rate_to_currency_fkey; Type: FK CONSTRAINT; Schema: payment;
--

ALTER TABLE ONLY exchange_rate
    ADD CONSTRAINT exchange_rate_to_currency_fkey FOREIGN KEY (to_currency) REFERENCES currency(currency_id) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


